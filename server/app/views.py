from datetime import datetime
from flask import (render_template, flash, redirect, session, url_for, request, 
                   g, jsonify, abort)
from flask_jwt import jwt_required
from flask.ext.jwt import current_user
from flask.ext.login import login_user, logout_user, login_required
from flask.ext.cors import cross_origin
from datetime import datetime
from flask.ext.wtf import Form
from wtforms.ext.sqlalchemy.orm import model_form
from wtforms import StringField, BooleanField, TextAreaField, SelectField
from json import dumps

from app import app, db, lm, jwt #, cors 
from .forms import Description, SelectForm, LoginForm, ChildForm  # ProjectViewForm, EditForm, PostForm
from .models import User
from widgets import ChoicesSelect
import alchemy_models as alch

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
    form = LoginForm(request.form)
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
def getAllAttributes():
    rows = alch.Attributelist.query.order_by("attributeID").all()
    attributes = {}
    for row in rows:
        attr = {"name": row.attributeName,
                "label": row.label,
                "format": row.format,
                "attributeHelp": row.attributeHelp,
                "help": row.help,
                "multi": row.multipleValued,
                "choices": [],
                "computed": row.computed}
        if row.format == "multipleSelect":
            # build the choices attributes, the available values for this attribute
            Table = row.attributeName[:-2].capitalize()
            table = row.attributeName[:-2]
            id = "{}ID".format(table)
            desc = "{}Desc".format(table)
            help = "{}Text".format(table)
            cstr = "alch.{Table}list.query.order_by('{table}ID').all()".format(Table = Table,
                                                                               table = table)
            choices = eval(cstr)
            # sort by id or by description
            if row.orderByID:
                for item in choices:
                    attr["choices"].append({"id": getattr(item, id),
                                           "desc": getattr(item, desc),
                                           "help": getattr(item, help)})
            else:
                attr["choices"].append({"id": getattr(choices[0], id),
                                        "desc": getattr(choices[0], desc),
                                        "help": getattr(choices[0], help)})
                raw = []
                for item in choices[1:]:
                    raw.append({"id": getattr(item, id),
                                "desc": getattr(item, desc),
                                "help": getattr(item, help)})
                
                attr["choices"] += sorted(raw, key = lambda x: x["desc"])
        
        attributes[attr["name"]] = attr
    return dumps(attributes)
    
@app.route("/getBriefDescriptions")
def get_brief_descriptions():
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
    p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
    form = Description(request.form, p)
    attributes = []
    index = 0

    attrs = alch.Attributelist.query.filter_by(table="description").order_by("attributeID").all()
    multipleValued = [item.attributeName for item in attrs if item.multipleValued == 1]
    
    for row in attrs:
        if row.attributeName in multipleValued:
            # Work through a list of table result items to get the data.
            # Form field does not end in "ID" but attribute name does.
            name = row.attributeName
            values = [getattr(item, name) for item in form[name[:-2]].data] 
            qf = form[name[:-2]].query_factory
            descs = [str(item[1]) for item in qf if item[0] in values]
            printValue = ", ".join(descs)
            attributes.append({"name": name,
                               "value": values,
                               "printValue": printValue
                               })
            
        elif row.format == "dateRangeSelect":
            data = form[row.attributeName].data
            attributes.append({"name": row.attributeName,
                               "value": data.isoformat() if data else ""})
    
        else:
            attributes.append({"name": row.attributeName,
                               "value": form[row.attributeName].data})

    return {"projectID": projectID, "attributes": attributes}

@app.route("/projectTemplate")
def projectTemplate():
    return render_template("view.html")

@app.route("/projectView/<projectID>", methods=["GET", "POST"])
def projectView(projectID):
    if projectID:
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
        form = Description(request.form, p)
        form.projectID.raw_data = [form.projectID.data]
        attributes = getProjectAttributes(projectID)
        return render_template("detail.html",
                               #title=attrs["title"],
                               projectID=projectID,
                               #projectName=attrs["projectName"],
                               #form=attrs["form"],
                               form=form,
                               attributes=attributes)

@app.route("/projectEdit/<projectID>", methods=["GET", "POST"])
@cross_origin(headers=['Content-Type', 'Authorization'])
@jwt_required()
def projectEdit(projectID):

    if 'Curator' not in current_user.groups:
        # Must be a Curator to edit project metadata
        abort(401)

    if projectID:
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
        form = Description(request.form, p)
        form.projectID.raw_data = [form.projectID.data]
        if form.validate_on_submit():
            form.populate_obj(p)
            db.session.add(p)
            db.session.commit()
            flash("Project {id} was updated".format(id=projectID))
            return redirect(url_for('projectEdit', projectID=projectID))
        title = "PPT {id}: {name}".format(
            id = p.projectID,
            name = p.name
            )
        attributes = getProjectAttributes(projectID)
#         for row in alch.Attributelist.query.filter_by(table="description").all():
#             attributes.append({"name": row.attributeName,
#                                "label": row.label,
#                                "format": row.format,
#                                "help": row.help,
#                                "multi": row.multipleValued,
#                                "value": form[row.attributeName].data,
#                                "choices": form[row.attributeName].choices if form[row.type] == "SelectField" else None,
#                                "multiple": form[row.attributeName].widget.multiple if form[row.type] == "SelectField" else None})
        return render_template("edit.html",
                               title=title,
                               projectID=projectID,
                               form=form,
                               attributes=attributes)

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

      
# @app.route('/login', methods=['GET', 'POST'])
# @oid.loginhandler
# def login():
#     if g.user is not None and g.user.is_authenticated():
#         return redirect(url_for('index'))
#     form = LoginForm()
#     if form.validate_on_submit():
#         session['remember_me'] = form.remember_me.data
#         return oid.try_login(form.openid.data, ask_for=['nickname', 'email'])
#     return render_template('login.html',
#                            title='Sign In',
#                            form=form)
# 
# 
# @oid.after_login
# def after_login(resp):
#     if resp.email is None or resp.email == "":
#         flash('Invalid login. Please try again.')
#         return redirect(url_for('login'))
#     user = User.query.filter_by(email=resp.email).first()
#     if user is None:
#         nickname = resp.nickname
#         if nickname is None or nickname == "":
#             nickname = resp.email.split('@')[0]
#         nickname = User.make_unique_nickname(nickname)
#         user = User(nickname=nickname, email=resp.email)
#         db.session.add(user)
#         db.session.commit()
#         # make the user follow him/herself
#         db.session.add(user.follow(user))
#         db.session.commit()
#     remember_me = False
#     if 'remember_me' in session:
#         remember_me = session['remember_me']
#         session.pop('remember_me', None)
#     login_user(user, remember=remember_me)
#     return redirect(request.args.get('next') or url_for('index'))
# 
# 
# @app.route('/logout')
# def logout():
#     logout_user()
#     return redirect(url_for('index'))
# 
# 
# @app.route('/user/<nickname>')
# @login_required
# def user(nickname):
#     user = User.query.filter_by(nickname=nickname).first()
#     if user is None:
#         flash('User %s not found.' % nickname)
#         return redirect(url_for('index'))
#     posts = [
#         {'author': user, 'body': 'Test post #1'},
#         {'author': user, 'body': 'Test post #2'}
#     ]
#     return render_template('user.html',
#                            user=user,
#                            posts=posts)
# 
# 
# @app.route('/edit', methods=['GET', 'POST'])
# @login_required
# def edit():
#     form = EditForm(g.user.nickname)
#     if form.validate_on_submit():
#         g.user.nickname = form.nickname.data
#         g.user.about_me = form.about_me.data
#         db.session.add(g.user)
#         db.session.commit()
#         flash('Your changes have been saved.')
#         return redirect(url_for('edit'))
#     elif request.method != "POST":
#         form.nickname.data = g.user.nickname
#         form.about_me.data = g.user.about_me
#     return render_template('edit.html', form=form)
# 
# 
# @app.route('/follow/<nickname>')
# def follow(nickname):
#     user = User.query.filter_by(nickname=nickname).first()
#     if user is None:
#         flash('User ' + nickname + ' not found.')
#         return redirect(url_for('index'))
#     u = g.user.follow(user)
#     if u is None:
#         flash('Cannot follow ' + nickname + '.')
#         return redirect(url_for('user', nickname=nickname))
#     db.session.add(u)
#     db.session.commit()
#     flash('You are now following ' + nickname + '!')
#     return redirect(url_for('user', nickname=nickname))
# 
# 
# @app.route('/unfollow/<nickname>')
# def unfollow(nickname):
#     user = User.query.filter_by(nickname=nickname).first()
#     if user is None:
#         flash('User ' + nickname + ' not found.')
#         return redirect(url_for('index'))
#     u = g.user.unfollow(user)
#     if u is None:
#         flash('Cannot unfollow ' + nickname + '.')
#         return redirect(url_for('user', nickname=nickname))
#     db.session.add(u)
#     db.session.commit()
#     flash('You have stopped following ' + nickname + '.')
#     return redirect(url_for('user', nickname=nickname))
