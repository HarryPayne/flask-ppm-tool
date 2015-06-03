from copy import deepcopy
from datetime import datetime
from json import dumps
import sys

from flask import (render_template, flash, redirect, session, url_for, request, 
                   g, jsonify, abort)
from flask_jwt import jwt_required
from flask.ext.jwt import current_user
from flask.ext.login import login_user, logout_user, login_required
from flask.ext.cors import cross_origin
from wtforms.ext.sqlalchemy.orm import model_form
from wtforms import (BooleanField, DateField, DateTimeField, SelectField, 
                     StringField, TextAreaField)
from wtforms.widgets import Select
from wtforms.ext.sqlalchemy.fields import QuerySelectMultipleField
#import wtforms_json
from werkzeug import datastructures, ImmutableMultiDict

from app import app, db, lm, jwt #, cors 
import forms #import (Description, Portfolio, Disposition, Project, Comment, # Upload, 
             #       SelectForm, LoginForm)
from models import User
from widgets import ChoicesSelect
import alchemy_models as alch
#from alchemy_models import Attributelist, Month, Quarter, Year

ALL_ATTRIBUTES = {}

@jwt.authentication_handler
def authenticate(username, password):
    user = User(id=username, passwd=password)
    if user.active is not False:
        return user

@jwt.user_handler
def load_user(payload):
    userid = payload["id"] or None
    return User(id=userid)

@jwt.payload_handler
def make_payload(user):
    return {
        'id': user.id,
        'name': user.name,
        'mail': user.mail,
        'roles': user.groups,
        'active': user.active
    }

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = forms.LoginForm(request.form)
    if request.method == 'POST' and form.validate():
        
        user = User(uid=form.username.data, passwd=form.password.data)
        if user.active is not False:
            login_user(user)
            flash("Logged in successfully.")
            return redirect(url_for("index"))
        else:
            flash("Invalid credentials. Please try again.")
            return redirect(url_for("login"))
    return render_template("login.html", form=form)

@app.route("/logout", methods=["GET", "POST"])
@login_required
def logout():
    logout_user()
    return redirect(url_for("index"))

# @app.before_request
# def before_request():
#     # Fix jQuery.params renaming attributes with multiple values.
#     import pydevd
#     pydevd.settrace()
#     
#     form = request.form
#     if False:
#         newform = datastructures.MultiDict()
#         for key in form.keys():
#             if key[-2:] == "[]":
#                 newform.add(key[:-2], form.getlist(key))
#             else:
#                 newform.add(key, form.getlist(key))
#         request.form = newform

# @app.before_request
# def before_request():
#     g.user = current_user
#     if g.user.is_active():
#         g.user.last_seen = datetime.utcnow()
#         db.session.add(g.user)
#         db.session.commit()


@app.errorhandler(404)
def not_found_error(error):
    return render_template('404.html'), 404


@app.errorhandler(500)
def internal_error(error):
    db.session.rollback()
    return render_template('500.html'), 500


@app.route('/', methods=['GET', 'POST'])
@app.route('/index', methods=['GET', 'POST'])
def index():
    return render_template('index.html',
                           title='Home')

@app.route('/selectView')
def selectView():
    return render_template('select.html',
                           title='Select')

@app.route("/getAllAttributes")
def getAllAttributesJSON():
    if ALL_ATTRIBUTES:
        allAttrsFromDB = ALL_ATTRIBUTES
    else:
        allAttrsFromDB = getAllAttributes()
    return dumps(allAttrsFromDB)
    #return dumps(getAllAttributes())

def getAllAttributes():
    attrs = alch.Attributelist.query.order_by("attributeID").all()
    allAttrsFromDB = {}
    for attr in attrs:
        allAttrsFromDB[attr.attributeName] = attr
    
    allAttrsFromDB["csrf_token"] = {"name": "csrf_token",
                                    "format": "hidden",
                                    "label": ""}
    
    attributes = {}
    attributes["csrf_token"] = {"name": "csrf_token",
                                "format": "hidden"}
    attributesByTable = {}

    p = alch.Description.query.first_or_404()
    Description = forms.Description(ImmutableMultiDict([]), p)
    attributesByTable["description"] = getAttributesFromForm(Description, allAttrsFromDB)
    attributes.update(attributesByTable["description"])
    
    Portfolio = forms.Portfolio(ImmutableMultiDict([]), p.portfolio[0])
    attributesByTable["portfolio"] = getAttributesFromForm(Portfolio, allAttrsFromDB)
    attributes.update(attributesByTable["portfolio"])
    
    Disposition = forms.Disposition(ImmutableMultiDict([]), p.disposition[0])
    attributesByTable["disposition"] = getAttributesFromForm(Disposition, allAttrsFromDB)
    attributes.update(attributesByTable["disposition"])
    
    Project = forms.Project(ImmutableMultiDict([]), p.project[0])
    attributesByTable["project"] = getAttributesFromForm(Project, allAttrsFromDB)
    attributes.update(attributesByTable["project"])
    
    Comment = forms.Comment(ImmutableMultiDict([]), p.comments[0])
    attributesByTable["comment"] = getAttributesFromForm(Comment, allAttrsFromDB)
    attributes.update(attributesByTable["comment"])
    
#     Upload = forms.Project(ImmutableMultiDict([]), p.upload[0])
#     attributesByTable["upload"] = getAttributesFromForm(Upload, allAttrsFromDB)
#     attributes.update(attributesByTable["upload"])
    
    ALL_ATTRIBUTES = attributes
    return attributes
        
def getAttributesFromForm(form, allAttrsFromDB):
    tableName = getTableNameFromForm(form)

    attributes = {}
    attributes["csrf_token"] = {"name": "csrf_token",
                                "format": "hidden"}
    
    for field in form:
        if field.name in ["csrf_token", "projectID"]:
            continue
        if "In" in field.name:
            dbattr = allAttrsFromDB[field.name[:field.name.index("In")]]
        else:
            dbattr = allAttrsFromDB[field.name]
        attr = {"name": field.name,
                "label": dbattr.label,
                "attributeID": dbattr.attributeID,
                "attributeHelp": dbattr.attributeHelp,
                "help": dbattr.help,
                "computed": dbattr.computed,
                "format": getFormatFromField(field, allAttrsFromDB), #dbattr.format,
                "choices": getChoicesFromField(field, allAttrsFromDB),
                "multi": getMultiFromField(field),
                "table": tableName
                }
        attributes[field.name] = attr
    
    children = [attr["name"] for attr in attributes.values() if "child_for_" in attr["format"]]
    for child in children:
        parent_root = child[:child.index("In")]
        parent = [key for key in attributes.keys() if "In" in key and key[:key.index("In")] == parent_root and key != child][0]
        if parent:
            attributes[parent]["child"] = deepcopy(attributes[child])
            del attributes[child]
        
    return attributes

def getTableNameFromForm(form):
    
    if isinstance(form, forms.Description):
        return "description"
    elif isintance(form, forms.Portfolio):
        return "portfolio"
    elif isinstance(form, forms.Disposition):
        return "disposition"
    elif isinstance(form, Project):
        return "project"
    elif isinstance(form, Comment):
        return "comment"
    elif isinstance(form, Upload):
        return "upload"
    else:
        return ""

def getFormatFromField(field, allAttrsFromDB):
    if field.name == "childID":
        return "multipleSelect"
    elif field.type == "QuerySelectMultipleField":
        return "multipleSelect"
    elif "InY" in field.name or "InFY" in field.name:
        return "dateRangeSelect"
    elif "InQ" in field.name or "InM" in field.name:
        root = field.name[:field.name.index("In")]
        return "child_for_{}".format(root)
    elif field.type == "SelectField":
        return "multipleSelect"
    elif field.type == "DateField":
        return "date"
    elif field.type == "StringField":
        return "string"
    elif field.type == "TextAreaField":
        return "textArea"
    else:
        return "string"
    

def getChoicesFromField(field, allAttrsFromDB):
    if field.name == "childID":     # odd self-referential relationship
        options = field.query_factory().order_by("projectID").all()
        return [{"id": getattr(item, "projectID"), "desc": str(getattr(item, "projectID"))} for item in options]
    elif field.type == "QuerySelectMultipleField":
        options = field.query_factory().all()
        return getChoicesFromFactoryOptions(field, options)
    elif field.type == "SelectField" and field.name[-2:] == "ID":
        options = field.choices
        return getChoicesFromOptions(field, options)
    elif field.type == "SelectField" and field.name[-4:] == "InFY":
        options = field.choices
        return getChoicesFromOptions(field, options)
    elif field.type == "SelectField" and field.name[-3:] == "InY":
        options = field.choices
        return getChoicesFromOptions(field, options)
    elif field.type == "SelectField" and field.name[-3:] == "InQ":
        options = field.choices
        return getChoicesFromOptions(field, options)
    elif field.type == "SelectField" and field.name[-3:] == "InM":
        options = field.choices
        return getChoicesFromOptions(field, options)
    else:
        return []
            
def getChoicesFromFactoryOptions(field, options):
    root = field.name[:-2]  # take off "ID"
    return [{"id": getattr(item, root+"ID"), "desc": getattr(item, root+"Desc")} for item in options]

def getChoicesFromOptions(field, options): 
    return [{"id": item[0], "desc": item[1]} for item in options] 

def getMultiFromField(field):
    if field.type == "QuerySelectMultipleField":
        return True
    else:
        return False
   
@app.route("/getBriefDescriptions")
def getBriefDescriptions():
    """ return list of project descriptions """
    columns = ["projectID", "name", "description", "finalID"]
    descriptions = []
    for item in alch.Description.query.order_by("projectID").all():
        d = {}
        for col in columns:
            d[col] = getattr(item, col)
        descriptions.append(d)
    return dumps(descriptions)

@app.route("/getProjectList", methods=["GET", "POST"]) 
def getProjectList():
    model = {}
    dlist = alch.Description.query.order_by("projectID")
    plist = [item.projectID for item in dlist.all()]
    if plist:
        model["list"] = plist
        model["index"] = 0
        model["previous"] = -1
        model["next"] = plist[1] or -1
        model["description"] = "all projects"
    else:
        model = {"list": [], "index": -1, "previous": -1, "next": -1}
    return dumps(model)

@app.route("/getProjectAttributes/<projectID>")
def getProjectAttributesJSON(projectID):
    attributes = getProjectAttributes(projectID)
    
    return dumps(attributes)

def getProjectAttributes(projectID):
    """ Render a WT Forms form from the request/db, pick out the data from the
        widgets, and send them out as JSON.
    """
    if ALL_ATTRIBUTES:
        allAttrsFromDB = ALL_ATTRIBUTES
    else:
        allAttrsFromDB = getAllAttributes()
        
    formData = []
    p = alch.Description.query.filter_by(projectID=projectID).first_or_404()

    descriptionForm = forms.Description(request.form, p)
    formData.append(getAttributeValuesFromForm(descriptionForm, allAttrsFromDB))
    
    portfolioForm = forms.Portfolio(request.form, p.portfolio[0])
    formData.append(getAttributeValuesFromForm(portfolioForm, allAttrsFromDB))
    
    projectForm = forms.Project(request.form, p.project[0] if p.project else [])
    formData.append(getAttributeValuesFromForm(projectForm, allAttrsFromDB))
    
    if len(p.disposition) == 0:
        dispositions = [forms.Disposition(request.form, [])]
    else:
        dispositions = [forms.Disposition(request.form, disposition) for disposition in p.disposition]
    formData.append({"tableName": "disposition",
                     "attributes": [{"tableName": "disposition", 
                                     "attributes": getAttributeValuesFromForm(item, allAttrsFromDB)["attributes"]} for item in dispositions]})
        
    if len(p.comments) == 0:
        comments = [forms.Comment(request.form, [])]
    else:
        comments = [forms.Comment(request.form, comment) for comment in p.comments]
    formData.append({"tableName": "comment",
                     "attributes": [{"tableName": "comment", 
                                     "attributes": getAttributeValuesFromForm(item, allAttrsFromDB)["attributes"]} for item in comments]})
    
#     uploadForm = forms.Upload(request.form, p.uploads[0])
    
    csrf_token = descriptionForm["csrf_token"].current_token

    return {"projectID": projectID,
            "csrf_token": csrf_token,
            "formData": formData}
        
def getAttributeValuesFromForm(form, allAttrsFromDB):
    token = ""
    attributes = []

    tableName = getTableNameFromForm(form)
    
    for field in form:
        if field.name in ["projectID","csrf_token"]:
            continue
        
        name = field.name
        value = field.data
        printValue = ""
        if "In" in field.name:
            if allAttrsFromDB.has_key(field.name):
                dbattr = allAttrsFromDB[field.name]
            else:
                # must be somebody's child
                child = field.name
                parent_root = child[:child.index("In")]
                parent = [key for key in allAttrsFromDB.keys() if "In" in key and key[:key.index("In")] == parent_root and key != child][0]
                dbattr = allAttrsFromDB[parent]["child"]
        else:
            dbattr = allAttrsFromDB[field.name]

        if name == "childID":
            value = [item for item in dbattr["choices"] if item["id"] in [d.projectID for d in field.data]]

        elif dbattr["format"] == "multipleSelect" and dbattr["multi"] == True:
            root = field.name[:-2]
            choices = dbattr["choices"]
            value = [item for item in choices if item["id"] in [getattr(data, root+"ID") for data in field.data]]
            printValue = ", ".join([item["desc"] for item in value])
        
        elif dbattr["format"] == "multipleSelect" and dbattr["multi"] == False:
            value = [item for item in dbattr["choices"] if item["id"] == field.data][0]
            
        elif dbattr["format"] == "dateRangeSelect":
            value = [item for item in dbattr["choices"] if item["id"] == field.data][0]
            if dbattr["child"]:
                dbChild = dbattr["child"]
                childName = dbChild["name"]
                formChild = form[childName]
                childValue = [item for item in dbChild["choices"] if item["id"] == formChild.data][0]
                attributes.append({"name": childName,
                                   "value": childValue,
                                   "printValue": childValue["desc"]})
        
        elif "child_for_" in dbattr["format"]:
            continue

        elif isinstance(field, DateField):
            data = field.data
            value = data.isoformat() if data else ""
           
        elif isinstance(field, DateTimeField):
            data = field.data
            value = data.isoformat() if data else ""
           
        attributes.append({"name": name,
                           "value": value,
                           "printValue": printValue})

    return {"tableName": tableName, "attributes": attributes}
    
def getTableNameFromForm(form):
    if isinstance(form, forms.Description):
        tableName = "description"
    
    elif isinstance(form, forms.Portfolio):
        tableName = "portfolio"
    
    elif isinstance(form, forms.Project):
        tableName = "project"
    
    elif isinstance(form, forms.Disposition):
        tableName = "disposition"
    
    elif isinstance(form, forms.Comment):
        tableName = "comment"
    
    return tableName
    
@app.route("/projectTemplate")
def projectTemplate():
    return render_template("view.html")

@app.route("/projectView/<projectID>", methods=["GET", "POST"])
def projectView(projectID):
    if projectID:
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
        form = forms.Description(request.form, p)
        form.projectID.raw_data = [form.projectID.data]
        attributes = getProjectAttributes(projectID)
        return render_template("detail.html",
                               #title=attrs["title"],
                               projectID=projectID,
                               #projectName=attrs["projectName"],
                               #form=attrs["form"],
                               form=form,
                               attributes=attributes)

@app.route("/projectEdit/<projectID>/<tableName>", methods=["GET", "POST"])
@cross_origin(headers=['Content-Type', 'Authorization'])
@jwt_required()
def projectEdit(projectID, tableName):
    if 'Curator' not in current_user.groups:
        # Must be a Curator to edit project metadata
        abort(401)

    if projectID:
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()

        errors = {}
        
        if tableName == "description":
            descriptionForm = forms.Description(request.form, p)
            if descriptionForm.validate_on_submit():
                try:
                    descriptionForm.populate_obj(p)
                    db.session.add(p)
                    db.session.commit()
                except:
                    errors["description"] = sys.exc_info()[0]
            else:
                errors["description"] = descriptionForm.errors
        
        elif tableName == "portfolio":
            portfolioForm = forms.Portfolio(request.form, p.portfolio[0])
            if portfolioForm.validate_on_submit():
                try:
                    portfolioForm.populate_obj(p.portfolio[0])
                    db.session.add(p.portfolio[0])
                    db.session.commit()
                except:
                    errors["portfolio"] = sys.exc_info()[0]
            else:
                errors["portfolio"] = portfolioForm.errors

        elif tableName == "project":
            projectForm = forms.Project(request.form, p.project[0])
            if projectForm.validate_on_submit():
                try:
                    projectForm.populate_obj(p.project[0])
                    db.session.add(p.project[0])
                    db.session.commit()
                except:
                    errors["project"] = sys.exc_info()[0]
            else:
                errors["project"] = projectForm.errors

        elif tableName == "disposition":
            if len(p.disposition) and request.form.get("disposeID"):
                disposeID = int(request.form.get("disposeID"))
                disp_errors = []
                for disposition in p.disposition:
                    if disposition.disposeID != disposeID:
                        continue
                    dispositionForm = forms.Disposition(request.form, disposition)
                    if dispositionForm.validate_on_submit():
                        try:
                            dispositionForm.populate_obj(disposition)
                            db.session.add(disposition)
                            db.session.commit()
                            disp_errors.append({})
                        except:
                            errors["disposition"] = sys.exc_info()[0]
                    else:
                        disp_errors.append(dispositionForm.errors)
                    break
                errors["disposition"] = disp_errors

        elif tableName == "comment":
            if len(p.comments) and request.form.get("commentID"):
                comment_errors = []
                for comment in p.comments:
                    commentForm = forms.Comment(request.form, comment)
                    if commentForm.validate_on_submit():
                        try:
                            commentForm.populate_obj(comment)
                            db.session.add(comment)
                            db.session.commit()
                            comment_errors.append({})
                        except:
                            errors["comments"] = sys.exc_info()[0]
                    else:
                        comment_errors.append(commentForm.errors)
                errors["comments"] = comment_errors
        
        response = getProjectAttributes(projectID)
        if errors:
            response["errors"] = errors
        return dumps(response)
        
@app.route("/filterView", methods=["GET", "POST"])
def filterView():
    attributes = []
    for row in alch.Attributelist.query.filter_by(table="description").all():
        attributes.append({"name": row.attributeName,
                           "label": row.label,
                           "format": row.format,
                           "help": row.help})
    return render_template("filter.html",
                            attributes=attributes) 

