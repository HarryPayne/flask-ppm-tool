from copy import deepcopy
from datetime import datetime
import hashlib
import re
from sqlalchemy import (BLOB, Column, Date, DateTime, desc, Enum, ForeignKey, 
                        Float, Integer, orm, Integer, String, Table, Text, text)
from sqlalchemy.orm.collections import InstrumentedList
import sys
from urllib2 import unquote
from urlparse import parse_qs

from flask import (abort, flash, g, json, jsonify, redirect, 
                   session, render_template, request,  url_for
                   )
from flask_jwt import jwt_required
from flask.ext.jwt import current_user
from flask.ext.login import login_user, logout_user, login_required
from flask.ext.cors import cross_origin
from wtforms.ext.sqlalchemy.orm import model_form
from wtforms import (BooleanField, DateField, DateTimeField, SelectField,  
                     StringField, TextAreaField
                     )
from wtforms.widgets import Select
from wtforms_components.widgets import ReadOnlyWidgetProxy
from wtforms.ext.sqlalchemy.fields import QuerySelectMultipleField
#import wtforms_json
from werkzeug import datastructures, ImmutableMultiDict

from app import app, db, lm, jwt
from models import User
from widgets import ChoicesSelect
import forms
import alchemy_models as alch
from migrate.versioning.schemadiff import ColDiff

TABLE_MODELS = [getattr(alch, t.name.capitalize()) 
                    for t in db.metadata.sorted_tables]

# authentication/login form methods. We use flask_jwt for authentication, and 
# send out a JSON web token that is stored in the client and sent back with
# every request. The authentication back end is LDAP. We send out LDAP groups
# the user is in for use is role-based authorization on the front end (what to
# show the user). We do check the directory again when handling each request,
# and do not depend on the roles indicated in the jwt.

@jwt.authentication_handler
def authenticate(username, password):
    """ authentication handler
    """
    user = User(id=username, passwd=password)
    if user.active is not False:
        return user

@jwt.user_handler
def load_user(payload):
    """ user handler
    """
    userid = payload["id"] or None
    return User(id=userid)

@jwt.payload_handler
def make_payload(user):
    """ payload handler
    """
    return {
        'id': user.id,
        'name': user.name,
        'firstname': user.firstname,
        'lastname': user.lastname,
        'mail': user.mail,
        'roles': user.groups,
        'active': user.active
        }

@app.route('/login', methods=['GET', 'POST'])
def login():
    """ handle login form submission
    """
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
    """ logout handler
    """
    logout_user()
    return redirect(url_for("index"))

# Flask page template handlers

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
    """ render and return the only page sent from the back end
    """
    return render_template('index.html',
                           title='Home',
                           minified=app.config["MINIFIED"])

# We use angular-formly to configure forms on the front end dynamically. We
# do that by sending lists of field definitions in JSON. The lists are built
# by inspecting the SQLAlchemy table models and the wtforms_angular model
# forms. 
#
# On the front end, each form has a controller with a "model" attribute that 
# holds the data for the fields, and a "fields" attribute that holds a list 
# of formly attribute objects.

@app.route("/getFormlyAttributes")
def get_formly_attributes():
    """ return a dictionary of angular-formly form definitions
    
    Returns a dictionary 
        keys:   names of the 5 data tables
        values: list of formly attributes for the key table. Forms are built
                 
    """
    attributes = dict()
    attributes["description"] = forms.Description().formly_attributes()
    attributes["portfolio"] = forms.Portfolio().formly_attributes()
    attributes["disposition"] = forms.Disposition().formly_attributes()
    attributes["project"] = forms.Project().formly_attributes()
    attributes["comment"] = forms.Comment().formly_attributes()
    
    return jsonify(**attributes)



# Methods for constructing the JSON response to a getAllAttributes request.

# The response is a list of objects describing the attributes that describe a
# project. These objects contain all of the information required to render the 
# form fields for a project in the front end. Each attribute corresponds to a 
# column in the database. 


# We are creating a single page application and updates are all made via ajax.
# We cannot send out forms generated by some backend forms framework because
# we can't turn them into JSON. Instead, create forms on the back end (using
# Flask WTForms), extract information from the fields/widgets on those forms,
# and send that out as JSON. We create a form for each of the five main data 
# tables.

# Each Python attribute object is a dictionary with these key/values:
#
#    attributeID    integer value used as sort order for the list of 
#                    attributes/form widgets.
#    child          to handle widgets that consist of more than one database
#                    column, we group them as parent and child. The child 
#                    attribute does NOT have its own entry in the list. The
#                    child object is the same kind of object as the parent.
#    choices        a list of option objects used to render the widgets that
#                    contain a select element. Each option object is a
#                    dictionary with keys:
#
#                        id    to be used as the option value
#                        desc  to be used as the option label
#
#    computed       True if the column is read only, otherwise False.
#    format         a format identifier used to decide which widget to use for
#                     the view or edit field for this attribute. 
#    help           help text displayed with the field edit widget.
#    label          the label for the field widget
#    multi          True if the edit field uses a multiple select widget, 
#                    otherwise False.
#    name           attribute name. Generally this is the same as the database
#                    column name.
#    required       True if this is a required attribute, False otherwise. If
#                    a select widget is required, we ensure that the choices
#                    do not include a null option.
#    table          the name of the database table containing the column for
#                    this attribute.
                   
@app.route("/getAllAttributes")
def getAllAttributesJSON():
    """ Send allAttributes data as JSON 
    """
    return jsonify(**getAllAttributes())

def getAllAttributes():
    """ Return value-less attribute objects for all project attributes, grouped
        by table
    """
    attributes = {}
    attributes["csrf_token"] = {"name": "csrf_token",
                                "format": "hidden"}
    attributesByTable = {}

    Description = forms.Description()
    attributesByTable["description"] = getAttributesFromForm(Description)
    attributes.update(attributesByTable["description"])
    
    Portfolio = forms.Portfolio()
    attributesByTable["portfolio"] = getAttributesFromForm(Portfolio)
    attributes.update(attributesByTable["portfolio"])
    
    Disposition = forms.Disposition()
    attributesByTable["disposition"] = getAttributesFromForm(Disposition)
    attributes.update(attributesByTable["disposition"])
    
    Project = forms.Project()
    attributesByTable["project"] = getAttributesFromForm(Project)
    attributes.update(attributesByTable["project"])
    
    Comment = forms.Comment()
    attributesByTable["comment"] = getAttributesFromForm(Comment)
    attributes.update(attributesByTable["comment"])
    
#     Upload = forms.Project()
#     attributesByTable["upload"] = getAttributesFromForm(Upload)
#     attributes.update(attributesByTable["upload"])
    
    return attributes
        
def getAttributesFromForm(form):
    """ Given a form model, gather field properties from the form widgets and 
        the data model, and return a dictionary of attribute objects."""
    tableName = getTableNameFromForm(form)

    attributes = {}
    attributes["csrf_token"] = {"name": "csrf_token",
                                "format": "hidden"}
    
    for field in form:
        if field.name in ["csrf_token", "projectID"]:
            continue
        required = getRequiredFromField(field)
        try:
            attr = {"attributeID": getattr(field.meta.model, field.name).info["attributeID"],
                    "choices": getChoicesFromField(field, required),
                    "computed": getReadOnlyFromField(field), 
                    "format": getFormatFromField(field), 
                    "help": getattr(field.meta.model, field.name).info["help"],
                    "label": field.label.text,
                    "multi": getMultiFromField(field),
                    "name": field.name,
                    "required": required,
                    "table": tableName,
                    }
            attributes[field.name] = attr
        except:
            pass
    
    # dateRangeSelect widget takes a year value and a quarter or month value. Make the
    # quarter/month attribute a child of the year attribute, so that they can be
    # displayed together. Take the child attribute out of the attributes dictionary.
    
    children = [attr["name"] for attr in attributes.values() 
                                 if "child_for_" in attr["format"]]
    for child in children:
        parent_root = child[:child.index("In")]
        parent = [key for key in attributes.keys() 
                      if ("In" in key 
                          and key[:key.index("In")] == parent_root 
                          and key != child)
                  ][0]
        if parent:
            attributes[parent]["child"] = deepcopy(attributes[child])
            del attributes[child]
        
    return attributes

def getTableNameFromForm(form):
    """ return table name
    """
    return form.meta.model.__tablename__

def getFormatFromField(field):
    """ return front end format from widget
    """
    if field.name == "childID":
        return "multipleSelect"
    elif field.type == "QuerySelectMultipleField":
        return "multipleSelect"
    elif field.type == "IntegerField":
        return "number"
    elif  field.name.endswith("InY") or field.name.endswith("InFY"):
        return "dateRangeSelect"
    elif field.name.endswith("InQ") or field.name.endswith("InM"):
        root = field.name[:field.name.index("In")]
        return "child_for_{}".format(root)
    elif field.type == "SelectField":
        return "multipleSelect"
    elif field.type == "DateField":
        return "date"
    elif field.type == "DateTimeField":
        return "date"
    elif field.type == "StringField":
        return "string"
    elif field.type == "TextAreaField":
        return "textArea"
    else:
        return "string"    

def getChoicesFromField(field, required):
    """ return select field choices from widget
    """
    if field.name == "childID":     # odd self-referential relationship
        options = field.query_factory().order_by("projectID").all()
        return [{"id": getattr(item, "projectID"), 
                 "desc": str(getattr(item, "projectID"))} for item in options]
    elif field.type == "QuerySelectMultipleField":
        orderBy = field.name[:field.name.index("ID")] + "Desc"
        options = field.query_factory().order_by(orderBy).all()
        return getChoicesFromFactoryOptions(field, options)
    elif field.type == "SelectField" and field.name.endswith("ID"):
        options = field.choices
        choices = getChoicesFromOptions(field, options)
        if not required:
            zeroChoice = [choice for choice in choices 
                            if str(choice["id"]) == "0"]
            if zeroChoice:
                # make sure it comes first
                zeroIndex = choices.index(zeroChoice[0])
                if not zeroIndex == 0:
                    del choices[zeroIndex]
                    choices.insert(0, {"id": 0, "desc": "none"})
        if required:
            zeroChoice = [choice for choice in choices 
                            if str(choice["id"]) == "0"]
            if zeroChoice:
                # delete it
                zeroIndex = choices.index(zeroChoice[0])
                del choices[zeroIndex]
        return choices
    elif (field.type == "SelectField" and field.name.endswith("InFY")
          or field.type == "SelectField" and field.name.endswith("InY")
          or field.type == "SelectField" and field.name.endswith("InQ")
          or field.type == "SelectField" and field.name.endswith("InM")
          ):
        options = field.choices
        choices = getChoicesFromOptions(field, options)
        if required:
            zeroChoice = [choice for choice in choices 
                            if str(choice["id"]) == "0"]
            if zeroChoice:
                # delete this choice if field is required
                zeroIndex = choices.index(zeroChoice[0])
                if required:
                    del choices[zeroIndex]
        return choices
    else:
        return []
            
def getChoicesFromFactoryOptions(field, options):
    """ convert query_factory into Bootstrap select choices
    """
    root = field.name[:-2]      # take off "ID"
    return [{"id": getattr(item, root+"ID"), 
             "desc": getattr(item, root+"Desc")} for item in options]

def getChoicesFromOptions(field, options): 
    """ convert SQLAlchemy options into Bootstrap select choices
    """
    return [{"id": item[0], "desc": item[1]} for item in options] 

def getMultiFromField(field):
    """ answer whether widget is a multiple select element
    """
    if field.type == "QuerySelectMultipleField":
        return True
    else:
        return False

def getReadOnlyFromField(field):
    """ answer whether widget is readonly
    """
    return isinstance(field.widget, ReadOnlyWidgetProxy)

def getRequiredFromField(field):
    """ answer whether widget is required
    """
    return field.flags.required

# Generate a list of brief project descriptions for all projects. This list is
# saved in the client and used for a number of purposes. POST method is used
# from the front end to prevent caching.

@app.route("/getBriefDescriptions", methods=["GET", "POST"])
def getBriefDescriptions():
    """ return list of project brief descriptions
    
    Returns a list of json objects, one per project, with attributes matching
    the list of alch.Description model column names specified in "columns", 
    with values taken from the database.
    """
    columns = ["projectID", "name", "description", "finalID"]
    d = alch.Description
    entities = [getattr(d, column) for column in columns]
    results = d.query.with_entities(*entities).all()
    descriptions = [result._asdict() for result in results]
    return jsonify(descriptions=descriptions)

# Under the Select tab there is an option for the user to select one of the
# controlled vocabulary attributes and get a count of projects for each value
# in that vocabulary. These two methods provide the data for rendering the
# drop down to select an attribute and to return the breakdown results, 
# respectively.

@app.route("/getBreakdownChoices")
def getBreakdownChoices():
    """ send choices for breakdown by attribute dropdown
    """
    # There is a naming convention on the db tables so that the choices for
    # column/attribute "foo" are in a table named "foolist."
    
    table_names = db.metadata.tables.keys()
    list_names = [re.sub("list\\b", "", name) for name in table_names 
                    if name.endswith("list")]
    choices = []
    
    for name in list_names:
        list_table = getattr(alch, name.capitalize()+"list")
        mapper = db.inspect(list_table)
        key = [t for t in mapper.columns if t.primary_key][0].key
        choice = {"id": key,
                  "desc": list_table.info["label"]}
        choices.append(choice)
    
    # put choices in alphabetical order
    choices.sort(key = lambda item: item["desc"])
    return jsonify(choices=choices)  
    
@app.route("/getBreakdownByAttribute/<key>")
def getBreakdownByAttribute(key):
    """ send a project count for each allowed value of key
    
    Parameters:
        key    the column name of the attribute
    
    Returns:
        A JSON object containing:
            the label for that option,
            a list of projectIDs matching that choice,
            a description of the query used to obtain the results,
            a sql string for reproducing the results.
    """
    # Start with a query against the primary table. Save the column model
    # for sorting results at the end.
    p = db.session.query(alch.Description)
    p.sort_on = alch.Description.projectID

    # Find the column or relationship that holds the data for key.
    p, col = get_filter_column_for_key(p, key)
    
    # Build breakdown report rows.
    breakdown_rows = []
    # Insert a null choice, if called for
    if col.add_null_choice:
        breakdown_rows.append(get_breakdown_row(p, col, None))
    
    for choice in col.choices:
        breakdown_rows.append(get_breakdown_row(p, col, choice))
    
    return jsonify(breakdown=breakdown_rows)

def get_filter_column_for_key(p, key):
    """ return a column object for filtering search results
    
    Parameters:
        key             a table attribute, which may be a column or a
                          relationship
    
    Return a table column object col with optional additional attributes:
        col.data_table  sqlalchemy model of table containing the key
        col.choices     if the key has a controlled vocabulary for a select
                          or multiple select
        col.model       an object to be used in a query filter if the key is
                          one-to-many with projects
        col.none_model  an object to be used in a query filter for one-to-many
                          attributes when looking for null values, such as
                          projects without drivers
        col.add_null_choice
                        if True add a null choice to choices from the db
    """
    # Find the table and column or relationship that holds the data 
    # for the key by examining the models in the alchemy_models module

    # Check for one-to-many relationships that have an association object and 
    # table. The test for this less used path has to come first. Otherwise 
    # the algorithm finds the association table, not the base table. 
    matched_by_relationships = [t for t in TABLE_MODELS if key
                                 in db.inspect(t).relationships.keys()]
    if matched_by_relationships:
        # From the relationship we identify the table that holds the data.
        # We can get the column from the model of that table
        if len(matched_by_relationships) == 1:
            data_table = matched_by_relationships[0]
        else:
            # Get down to one or throw an error. 
            data_table = get_down_to_one(matched_by_relationships, key)
        mapper = db.inspect(data_table)
 
        # We return the relationship as if it were a column.
        col = mapper.relationships[key]
        col.data_table = data_table
        
        # The column in the model that is needed at query time is the backref
        # from a relationship in the association object. I can't figure out
        # how to find the thing, so we fall back on a naming convention.
        association_object_name = re.sub("ID", "s", key)
        col.model = getattr(col.data_table, association_object_name)
        
        # But for None values need the model column that matches the key
        col.none_model = getattr(col.data_table, key)

        # Find the name of the table at the far end of the association, and
        # use that to find the pre-computed list of choices.
        association_table_name = col.model.attr[1].prop.mapper.tables[0].name
        choices_table_name = re.sub("LIST", "", 
                                    association_table_name.upper())+"_RESULTS"
        if hasattr(alch, choices_table_name):
            col.choices = getattr(alch, choices_table_name)
        
        col.add_null_choice = True
        col.is_relationship = True
        return p, col

    matched_by_columns = [t for t in TABLE_MODELS if key 
                        in db.inspect(t).columns.keys()]
    if matched_by_columns:
        if len(matched_by_columns) == 1:
            data_table = matched_by_columns[0]
        else:
            # Get down to one or throw an error. 
            data_table = get_down_to_one(matched_by_columns, key)
        col = db.inspect(data_table).columns[key]
        col.data_table = data_table
        
        # Join data_table to query if necessary
        p, col = join_data_table(p, col)
        
        # Check column for a foreign key to a controlled vocabulary table
        # and get choices if there. Those table names are linked by a naming
        # convention to the key.
        if col.foreign_keys:
            fk_table_name = list(col.foreign_keys)[0].column.table.name
            choices_table_name = re.sub("LIST", "", fk_table_name.upper()) +\
                                    "_RESULTS"
            if hasattr(alch, choices_table_name):
                col.choices = getattr(alch, choices_table_name)
                col.add_null_choice = not col.nullable
            
        col.is_relationship = False
        return p, col
    
    # Raise an error if no match was found.
    raise AttributeError

def get_down_to_one(tables, key):
    """ pick a single instance of a column from multiple tables
    
    Throw AttributeError if failure.
    """
    # If only one is a foreign key then go with that.
    matched_with_fk = [t for t in tables 
                       if db.inspect(t).columns[key].foreign_keys]
    if len(matched_with_fk) == 1:
        return matched_with_fk[0]

    # If list includes Disposition and Latest_disposition, take
    # the second.
    matched_with_latest = [t for t in matched_with_fk 
                           if db.inspect(t).tables[0].name 
                            == "latest_disposition"]
    if len(matched_with_latest) == 1:
        return matched_with_latest[0]
    
    raise AttributeError

def join_data_table(p, col):
    """ join the data_table in col to the query p if it is not there already
    
    Return updated query p and column col.
    """
    return p, col
    mapper = db.inspect(col.data_table)
    if (mapper.tables[0].name != "description" 
      and mapper not in p._join_entities):
        # We rely on a naming convention to capitalize the table name to get 
        # the model name.
        model = getattr(alch, 
                    db.inspect(col.data_table).tables[0].name.capitalize())
        p = p.outerjoin(model)
        col.add_null_choice = True
    
    return p, col
    
def get_breakdown_row(p, col, choice):
    """ Return a breakdown by attribute row for a given choice
    
    Arguments:
        p        sqlalchemy Query object
        col      sqlalchemy table Column object
        choice   sqlalchemy table row object
    
    Returns a dictionary with keys:
        desc    the description from the given choice or "none" if the
                description is empty
        projectList
                a list of project ids of the projects having the value of the
                given choice sorted by project id
        query_desc
                a human readable description of the query giving these results
        query_string
                a query_string description of the query giving these results
    """
    label = col.info["label"]
    
    if choice is None:
        val = None
        desc = "no {}".format(label)
        query_desc = "no {}".format(label)
        query_string = "{}=".format(col.key)
    else:
        pk_col_name = list(choice.__mapper__.primary_key)[0].name
        val = getattr(choice, pk_col_name)
        desc = getattr(choice, re.sub("ID", "Desc", pk_col_name))
        if desc == "":
            desc = "none"
        query_desc = "{}={}".format(label, 
                                "'{}'".format(desc) if " " in desc 
                                else desc)
        query_string = "{}={}".format(col.key, val)
            
    if col.is_relationship and choice == None:
        r = p.filter(col.none_model == None)
    elif col.is_relationship:
        r = p.filter(col.model.contains(choice))
    else:
        r = p.filter(col == val)
    
    item = {"desc": desc,
            "projectList": [proj.projectID for proj 
                            in r.order_by(p.sort_on).all()],
            "query_desc": query_desc,
            "query_string": query_string
            }
        
    return item            

def truncate_gracefully(text_string, max_length):
    """ truncate text_string if too long
    
    Truncate a string at the last space character within the first max_length
    characters, if the string is longer than max_length. If so, add ellipsis.
    """
    added_ellipsis = ""
    if len(text_string) > max_length:
        added_ellipsis = "..."
        return text_string[0:text_string[0:max_length].rfind(" ")] + added_ellipsis
    else:
        return text_string
            
@app.route("/getReportTableJSON", methods=["POST"])
def getReportTableJSON():
    """ Generate JSON for the DataTables data on the Report tab.
    
    POST parameters:
        projectID       a list of projectIDs of projects to be displayed
        tableColumns    a list of table columns. Only data for these columns
                        are returned (in order, not that it matters).
    """
    projectIDList = request.json.get("projectID", [])
    tableColumns = request.json.get("tableColumns", [])
    
    # Find out everything about the specified table columns
    allAttrsFromDB = getAllAttributes()
    columns = []
    for col_name in tableColumns:
        if col_name in allAttrsFromDB.keys():
            columns.append(allAttrsFromDB[col_name])
    
    # Query for all projects in specified list
    filter = alch.Description.projectID.in_(projectIDList)
    p = alch.Description.query.filter(filter).all()
    
    response = getReportRowsFromQuery(p, columns)
    return jsonify(**response)

@app.route("/getReportResults", methods=["POST"])
def getReportResults():
    """ Get report data matching query_string from request.json
    """
    query_string = request.json.get("query_string", "")
    tableColumns = request.json.get("tableColumns", [])
    p = db.session.query(alch.Description)
    p.sort_model = alch.Description.projectID

    # Generate a list of column entities for columns specified in the request.
    # Skip over bogus column names.
    entities = []
    for key in tableColumns:
        if key in ("projectID"):
            continue
        try:
            p, col = get_filter_column_for_key(p, key)
        except AttributeError:
            pass
        else:
            entities.append(col)

    if query_string != "":
        # Apply the filters specified in the query_string
        query = parse_qs(unquote(query_string), True, True)

        descs = []
        query_descs = []
        query_strings = []
    
        for key in query.keys():
            # Look for the attributes that match the keys in the query, making
            # allowance for hybrid property columns, which are the date range 
            # select values.
            try:
                p, col = get_filter_column_for_key(p, key)
            except:
                # skip over bogus keys
                continue
            
            if hasattr(col, "choices"):
                # Filter on matches to controlled vocabulary choices
                
                # get unique list of null and integer values in query
                raw_values = list(set(query[key]))
                null_values = False
                if "" in raw_values:
                    null_values = True
                    raw_values.remove("")
                    
                # Match accepted choices to request values
                int_values = map(int, raw_values)
                accepted_choices = [choice for choice in col.choices
                                    if getattr(choice, col.key) in int_values]

                # Build filter query_desc and query_string strings from
                # accepted choices.
                desc_name = re.sub("ID", "Desc", col.key)
                accepted_descs = ["'{}'".format(getattr(item, desc_name)) 
                                  if getattr(item, desc_name) else "none" 
                                  for item in accepted_choices]
                accepted_values = [getattr(item, col.key) 
                                   for item in accepted_choices]
                q_descs = []
                if len(accepted_descs) > 1:
                    accepted_descs.sort()
                    q_descs.append("{} is {}".format(
                                             col.info["label"], 
                                             " or ".join(accepted_descs)))
                elif len(accepted_descs) == 1:
                    q_descs.append("{}={}".format(col.info["label"], 
                                                  accepted_descs[0]))
                if null_values:
                    q_descs.append("no {}".format(col.info["label"]))

                q_strings = []
                if len(accepted_values) > 1:
                    accepted_values.sort()
                    for val in accepted_values:
                        q_strings.append("{}={}".format(key, val))
                elif len(accepted_values) == 1:
                    q_strings.append("{}={}".format(key, accepted_values[0]))
                if null_values:
                    q_strings.append("{}=".format(col.key))

                query_desc = " or ".join(q_descs)
                if query_desc:
                    query_descs.append(query_desc)
                query_string = "&".join(q_strings)
                if query_string:
                    query_strings.append(query_string)

                # Build the actual query filters based on the accepted choices
                # and apply them.
                key_filters = []
                if len(accepted_values):
                    if col.is_relationship:
                        key_filters += [col.model.contains(c) for c in accepted_choices]
                    else:
                        key_filters.append(col.in_(accepted_values))
                if null_values:
                    if col.is_relationship:
                        key_filters.append(col.none_model == None)
                    else:
                        key_filters.append(col == None)
                if key_filters:
                    p = p.filter(db.or_(*key_filters))

            elif isinstance(col.type, (String, Text)):
                search_string = query[key][0]
                if search_string == "":
                    # empty search string means don't filter at all
                    continue
                
                logic = query[col.key + "Logic"]
                logic = logic[0] if logic else "or"
                if logic == "phrase":
                    query_descs.append("{} contains '{}'".format(col.key, search_string))
                    query_strings.append("{}={}".format(col.key, search_string))
                    p = p.filter(col.ilike("%{}%".format(search_string)))
                elif logic == "and":
                    words = search_string.split(" ")
                    desc_list = []
                    
                    for word in words:
                        if not word:
                            continue
                        desc_list.append("'{}'".format(word))
                        query_strings.append("{}={}".format(col.key, word))
                        p = p.filter(col.ilike("%{}%".format(word)))
                    
                    query_descs.append("{} contains {}".format(col.key, 
                                                               " and ".join(desc_list)))
                elif logic == "or":
                    words = search_string.split(" ")
                    desc_list = []
                    partials = []
                    
                    # create a partial for each word
                    for word in words:
                        if not word:
                            continue
                        desc_list.append("'{}'".format(word))
                        query_strings.append("{}={}".format(col.key, word))
                        partials.append(p.filter(col.ilike("%{}%".format(word))))
                    
                    query_descs.append("{} contains {}".format(col.key, 
                                                               " or ".join(desc_list)))
                    if partials:
                        # form the union of the partials and join with the query so far.
                        p0 = partials[0]
                        for partial in partials[1:]:
                            p0 = p0.union(partial)
                        p = p.join(p0.subquery())
                
            # Still need code for the name_desc special case for home page 
            # search through names and descriptions, date ranges, fiscal
            # date ranges with quarters (needs db fix to use actual dates),
            # and the ranges with months (also needs db fix).
        p = p.order_by(p.sort_model)
    
    response = getReportRowsFromQuery(p, entities)
    response["projectList"] = [item.projectID for item in p]
    response["query_desc"] = ", and ".join(query_descs) if len(query_descs) else "none"
    response["query_string"] = "&".join(query_strings)
    
    return jsonify(response=response)

    
#         for key in query.keys():
#             # Look for the attributes that match the keys in the query, making
#             # allowance for hybrid property columns, which are the date range 
#             # select values.
#             if key in attr_names:
#                 attr = allAttrsFromDB[key]
#             elif key.endswith("start"):
#                 new_key = re.sub("start\\b", "", key)
#                 if re.sub("start\\b", "", key) in attr_names:
#                     attr = allAttrsFromDB[new_key]
#                     usesFY = True if new_key.endswith("InFY") else False
#             elif key == "name_desc":
#                 # special case for home page search through names and descriptions
#                 attr = {"name": "name_desc",
#                         "table": "description",
#                         "format": ""}
#             else:
#                 continue
#             
#             # Find the table to be filtered
#             table = source_table[attr["table"]]
#     
#             if attr["format"] == "date":
# 
#                 startDateString = query.get(attr["name"] + "start", [""])[0]
#                 endDateString = query.get(attr["name"] + "end", [""])[0]
#                 
#                 if startDateString:
#                     dateComps = startDateString.split("-")
#                     startY, startM, startD = map(int, dateComps)
#                     startDate = datetime(startY, startM, startD).date()
#                     startDesc = startDate.strftime("%m/%d/%Y")
#                     filters.append("{}={}".format(attr["name"] + "start", 
#                                                   startDesc.replace("/", "-")
#                                                   ))
#                     p = p.filter(getattr(table, attr["name"]) >= startDate)
#                 else:
#                     startDesc = ""
#                     startDate = None
#                 
#                 if endDateString:
#                     dateComps = endDateString.split("-")
#                     endY, endM, endD = map(int, dateComps)
#                     endDate = datetime(endY, endM, endD).date()
#                     endDesc = endDate.strftime("%m/%d/%Y")
#                     filters.append("{}={}".format(attr["name"] + "end", 
#                                                    endDesc.replace("/", "-")))
#                     p = p.filter(getattr(table, attr["name"]) <= endDate)
#                 else:
#                     endDesc = ""
#                     endDate = None
#                 
#                 if startDate == endDate:
#                     query_descs.append("{} on {}".format(
#                         attr["label"], 
#                         startDesc))
#                 elif startDate and endDate:
#                     query_descs.append("{} between {} and {}".format(
#                         attr["label"],
#                         startDesc,
#                         endDesc))
#                 elif startDate:
#                     query_descs.append("{} on or after {}".format(
#                         attr["label"], 
#                         startDesc))
#                 elif endDate:
#                     query_descs.append("{} on or before {}".format(
#                         attr["label"], 
#                         endDesc))
#                 
#             elif attr["format"] == "dateRangeSelect":
#                 # dateRangeSelect attributes combine a parent and child 
#                 # field. The parent is a year (maybe fiscal) and the child 
#                 # is a fiscal quarter or month. Each attribute has start 
#                 # and end values in the query. The parent start value can 
#                 # be zero but cannot be missing from the query, due to the 
#                 # way the attribute is selected to match the query keys 
#                 # above.
#                 startY = int(query.get(attr["name"] + "start", [0])[0])
#                 startChild = int(query.get(attr["child"]["name"] + "start", [0])[0])
#                 endY = int(query.get(attr["name"] + "end", [0])[0])
#                 endChild = int(query.get(attr["child"]["name"] + "end", [0])[0])
# 
#                 if startY:
#                     filters.append("{}={}".format(attr["name"] + "start", startY))
#                     startDesc = "FY{}".format(str(startY)[-2:]) if usesFY else str(startY)
# 
#                     if startChild:
#                         filters.append("{}={}".format(attr["child"]["name"] + "start", 
#                                                       startChild))
#                         p = p.filter(100*getattr(table, attr["name"]) + getattr(table, attr["child"]["name"]) >= 100*startY + startChild)
#                         if usesFY:
#                             startChildDesc = "Q{}".format(startChild) if startChild else ""
#                         else:
#                             startChildDesc = [item[1] for item in alch.M_CHOICES if item[0] == startChild][0]
#                     else:
#                         p = p.filter(getattr(table, attr["name"]) >= startY)
#                         startChildDesc = ""
#                 if endY:
#                     filters.append("{}={}".format(attr["name"] + "end", endY))
#                     endDesc = "FY{}".format(str(endY)[-2:]) if usesFY else str(endY)
# 
#                     if endChild:
#                         filters.append("{}={}".format(attr["child"]["name"] + "end", 
#                                                       endChild))
#                         p = p.filter(100*getattr(table, attr["name"]) + getattr(table, attr["child"]["name"]) <= 100*endY +endChild)
#                         if usesFY:
#                             endChildDesc = "Q{}".format(endChild) if endChild else ""
#                         else:
#                             endChildDesc = [item[1] for item in alch.M_CHOICES if item[0] == endChild][0]
#                     else:
#                         p = p.filter(getattr(table, attr["name"]) <= endY)
#                         endChildDesc = ""
# 
#                 if startY==endY and startChild==endChild:
#                     # e.g., "in FY15 Q1" if usesFY else "Oct 2014" 
#                     query_descs.append("{} in {} {}".format(attr["label"],
#                         startDesc if usesFY else startChildDesc,    
#                         startChildDesc if usesFY else startDesc))
#                 
#                 elif startY and endY:
#                     query_descs.append("{} between {} {} and {} {}".format(attr["label"],
#                         startDesc if usesFY else startChildDesc,
#                         startChildDesc if usesFY else startDesc,
#                         endDesc if usesFY else endChildDesc,
#                         endChildDesc if usesFY else endDesc))
#                 
#                 elif startY:
#                     query_descs.append("{} in or after {} {}".format(attr["label"],
#                         startDesc if usesFY else startChildDesc,
#                         startChildDesc if usesFY else startDesc))
#                 
#                 elif endY:
#                     query_descs.append("{} before or in {} {}".format(attr["label"],
#                         endDesc if usesFY else endChildDesc,
#                         endChildDesc if usesFY else endDesc))
#                 
#             elif attr["name"] == "name_desc":
#                 # Special handling for name plus description searching, which
#                 # happens on the home page search. Return the union of results
#                 # from both "name" and "description" attributes, to match the
#                 # behavior of the home page search.
#                 searchString = query[key][0]
#                 if searchString == "":
#                     continue
#                 
#                 logic = query[attr["name"] + "Logic"][0]
#                 if logic == "phrase":
#                     query_descs.append("name or description contains '{}'".format(searchString))
#                     filters.append("{}={}".format(attr["name"], searchString))
#                     p = p.filter(db.or_(getattr(table, "name").ilike("%{}%".format(searchString)),
#                                         getattr(table, "description").ilike("%{}%".format(searchString))))
#                 elif logic == "and":
#                     words = searchString.split(" ")
#                     desc_list = []
#                     
#                     for word in words:
#                         if not word:
#                             continue
#                         desc_list.append("'{}'".format(word))
#                         filters.append("{}={}".format(attr["name"], word))
#                         p = p.filter(db.or_(getattr(table, "name").ilike("%{}%".format(word)),
#                                             getattr(table, "description").ilike("%{}%".format(word))))
#                     
#                     query_descs.append("name or description contains {}".format(" and ".join(desc_list)))
#                 
#                 elif logic == "or":
#                     # create a partial for each word, form the union of those,
#                     # and join that to the query so far.
#                     words = searchString.split(" ")
#                     desc_list = []
#                     partials = []
#                     
#                     for word in words:
#                         if not word:
#                             continue
#                         desc_list.append("'{}'".format(word))
#                         filters.append("{}={}".format(attr["name"], word))
#                         partials.append(p.filter(db.or_(getattr(table, "name").ilike("%{}%".format(word)),
#                                                         getattr(table, "description").ilike("%{}%".format(word)))))
#                     
#                     query_descs.append("name or description contains {}".format(" or ".join(desc_list)))
#                     if partials:
#                         p0 = partials[0]
#                         for partial in partials[1:]:
#                             p0 = p0.union(partial)
#                         p = p.join(p0.subquery())

def getReportRowsFromQuery(p, columns):
    """ Given query result object and columns list, produce rows 
                    
    Send back 
        data            a list of rows of database query results, with just
                        projectID and the specified columns.
        columns         send back the column names and labels
        options         default datatables options
    """
    rows = []
    response = {}
    for item in p:
        row = {"projectID": getattr(item, "projectID")}
        for col in columns:
            
            value = get_column_value_from_item(col, item)
            
            
            if col.is_relationship:
                # Use naming convention to find the multiple select column.
                # This test comes first because this entity object does not
                # have a type attribute.
                rel_objects = getattr(item, re.sub("ID", "s", col.key))
                values = [getattr(r, re.sub("ID", "Desc", col.key)) 
                          for r in rel_objects]
                value = ", ".join(values)
                
            elif isinstance(col.type, Text):
                value = truncate_gracefully(value, 100)                
            
            elif isinstance(col.type, Date):
                value = value.strftime("%m/%d/%Y") if value else None
            
            elif hasattr(col, "choices") and not col.is_relationship:
                choice = [c for c in col.choices 
                          if getattr(c, col.key) == value]
                if choice:
                    value = getattr(choice[0], re.sub("ID", "Desc", col.key))
                else:
                    value = None
            
            row[col.key] = value
        rows.append(row)
    
    response = {"data": rows}
    
    # DataTable column definitions for specified columns. 
    response["columns"] = get_datatable_columns(columns)
    
    # Datatables options
    response["options"] = get_datatable_options(rows)
    
    return response

def get_column_value_from_item(col, item):
    """ dig through table relationships to find value for column
    """
    if col.data_table.__tablename__ == "description":
        return getattr(item, col.key)
    
    elif col.data_table.__tablename__ == "latest_disposition":
        # latest_disposition is a view on the underlying disposition table.
        # Get the disposition relation from item and look there. There may
        # not be one since it comes from an outer join.
        table = item.disposition
        if table:
            return getattr(table[0], col.key)
        else:
            return None

    else:
        # Get the appropriate relation and look there. Again, there may not 
        # be one.
        table = getattr(item, col.data_table.__tablename__)
        if table:
            return getattr(table[0], col.key)
        else:
            return None
    
def get_datatable_columns(columns):
    """ DataTable column definitions for specified columns. 
    """
    # The projectID column requires a render function, which can't be 
    # serialized. That needs to be added in the client.
    aoColumns = []
    for col in columns:
        label = col.info["label"] if col.info.has_key("label") else col.key
        dt_col = {"data": col.key,
                  "title": label.capitalize()}
        aoColumns.append(dt_col)
    return aoColumns

def get_datatable_options(rows):
    """ return a dictionary of jQuery datatable options
    """
    # Datatables options
    #    Hide pagination if there is only one page of results
    #    Don't show the option to change the number of results
    #    Don't show the search box
    #    Action is client-side, not server side
    #    No searching
    pageLength = 25
    return {
        "destroy": True,
        "lengthChange": False,
        "pageLength": pageLength,
        "paging": len(rows) > pageLength,
        "pagingType": "full_numbers",
        "saveState": True,
        "searching": False,
        "serverSide": False
    }
#             if col["format"] == "textArea":
#                 value = truncate_gracefully(value, 100)
#             elif col["format"] == "date":
#                 if value:
#                     value = value.strftime("%m/%d/%Y")
#             elif col_name[-2:] == "ID":
#                 # Look in the relationship with the controlled vocabulary table
#                 # for a description instead what you have at this point, which
#                 # is just a numerical value.
#                 relationship_name = col_name[0:-2]
#                 if table_relationship and hasattr(table_relationship, relationship_name):
#                     model = getattr(table_relationship, relationship_name)
#                     value = getattr(model, relationship_name+"Desc")
#                     if not value:
#                         value = "none"
#                 elif hasattr(item, relationship_name):
#                     model = getattr(item, relationship_name)
#                     value = getattr(model, relationship_name+"Desc")
# #                     if not value:
# #                         value = "none"
#                 elif type(value) == type(InstrumentedList()):
#                     # Multiple select fields have a relationship with a name 
#                     # that has "ID" on the end, so we already have the right
#                     # value, but the value is a list. Dig into the list to get
#                     # the descriptions, and then join them with commas.
#                     value = ", ".join([getattr(val, relationship_name+"Desc") for val in value])
#             elif col_name[-4:] == "InFY":
#                 # Get the value of the corresponding hybrid property, which 
#                 # includes both a FY value and a quarter or month value.
#                 hybrid_name = col_name[:-2]
#                 if table_relationship and hasattr(table_relationship, hybrid_name):
#                     value = getattr(table_relationship, hybrid_name)
#                 elif hasattr(item, hybrid_name):
#                     value = getattr(item, hybrid_name)
#             elif col_name[-3:] == "InY":
#                 hybrid_name = col_name[:-1]
#                 if table_relationship and hasattr(table_relationship, hybrid_name):
#                     value = getattr(table_relationship, hybrid_name)
#                 elif hasattr(item, hybrid_name):
#                     value = getattr(item, hybrid_name)
#             row[col_name] = value

    
# Methods for generating the JSON response to a request for all of the data for
# a given project. We generate forms on the backend, extract the data into a 
# dictionary of dictionaries and lists of dictionaries, and send them out.

# The response consists of:
#
#    projectID      projectID is the primary key for all of the major database
#                    and is the unique identifier for each project.
#    csrf_token     a cross-site request forgery token that must be returned 
#                    and validated with a request to update the database.
#    formData       a dictionary containing the projectID (again), and a
#                    data object for each of the five data tables. Each
#                    table object contains:
#
#                        tableName      the name of the database table 
#                        attributes     a list of attribute value objects
#
#                   Attribute value objects contain:
#
#                        name           attribute name
#                        printValue     an optional string used to display the
#                                        attribute value
#                        value          the attribute value, which may be:
#                                         a single string or number,
#                                         a dictionary with keys "id" and "desc", or
#                                         a list of {id, desc} objects.

# The idea is that the client will merge the project data generated here with 
# the list of attributes sent out once at the beginning of the session. 

@app.route("/getProjectAttributes/<projectID>")
def getProjectAttributesJSON(projectID):
    """ send attribute values for project as JSON """
    attributes = getProjectAttributes(projectID)
    
    return jsonify(**attributes)

def getProjectAttributes(projectID, tableName=None):
    """ Render a WT Forms form from the request/db, pick out the data from the
        widgets, and send them out as JSON.
    """
    # If a tableName is supplied, only send attributes in that table
    
    allAttrsFromDB = getAllAttributes()
        
    formData = []
    
    p = alch.Description.query.filter_by(projectID=projectID).first()
    
    ret = p.serialize()
    # return ret
    
    if not p:
        # send back forms with no data (for creating a new project)
        p = alch.Description()
        p.portfolio = [alch.Portfolio()]
        p.project = [alch.Project()]
        p.comments = []
        p.dispositions = []
    descriptionForm = forms.Description(request.form, p)
    csrf_token = descriptionForm["csrf_token"].current_token

    if tableName in ("description", None):
         formData.append(getAttributeValuesFromForm(descriptionForm, allAttrsFromDB))
    
    if tableName in ("portfolio", None):
        portfolioForm = forms.Portfolio(request.form, p.portfolio[0])
        formData.append(getAttributeValuesFromForm(portfolioForm, allAttrsFromDB))
    
    if tableName in ("project", None):
        projectForm = forms.Project(request.form, p.project[0])
        formData.append(getAttributeValuesFromForm(projectForm, allAttrsFromDB))
    
    if tableName in ("disposition", None):
        if len(p.dispositions):
            d = alch.Disposition.query.filter_by(projectID=projectID)\
                                      .order_by(db.desc("disposedInFY"))\
                                      .order_by(db.desc("disposedInQ"))
            # Using request.form here would step on data from db
            dispositions = [forms.Disposition(ImmutableMultiDict([]), disposition) for disposition in d]
            formData.append({"tableName": "disposition",
                             "attributes": [{"tableName": "disposition", 
                                             "attributes": getAttributeValuesFromForm(item, allAttrsFromDB)["attributes"]} for item in dispositions]})
        else:
            formData.append({"tableName": "disposition",
                             "attributes": [{"tableName": "disposition", 
                                             "attributes": []}]})
            
    if tableName in ("comment", None):
        if len(p.comments):
            c = alch.Comment.query.filter_by(projectID=projectID)\
                                  .order_by(db.desc("commentAuthored"))
            comments = [forms.Comment(ImmutableMultiDict([]), comment) for comment in c]
            formData.append({"tableName": "comment",
                             "attributes": [{"tableName": "comment", 
                                             "attributes": getAttributeValuesFromForm(item, allAttrsFromDB)["attributes"]} for item in comments]})
        else:
            formData.append({"tableName": "comment",
                             "attributes": [{"tableName": "comment", 
                                             "attributes": []}]})
            
#    if tableName in ("description", None):
#     uploadForm = forms.Upload(request.form, p.uploads[0])

    
    return {"projectID": projectID,
            "csrf_token": csrf_token,
            "formData": formData}
        
def getAttributeValuesFromForm(form, allAttrsFromDB):
    """ Take a rendered form, inspect the widgets, and pull out their values
        and choices (vocabularies).  Different widgets have values in different 
        places. Make parent/child combinations. Compute printValues that will
        just be printed in view mode.
    """
    token = ""
    attributes = []

    tableName = form.meta.model.__tablename__
    for field in form:
        if field.name in ["projectID","csrf_token"]:
            continue
        
        name = field.name
        value = field.data
        printValue = ""
        if "In" in field.name:
            # One of the in year fields, hence parent, or quarter or month,
            # and so a child. Only parents are in the allAttrs list.
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
            data = field.data
            if data == None:
                pass
            value = [item for item in dbattr["choices"] if item["id"] == data]
            value = value[0] if value else None
            
        elif dbattr["format"] == "dateRangeSelect":
            value = [item for item in dbattr["choices"] if item["id"] == field.data]
            value = value[0] if value else None
            if dbattr["child"]:
                dbChild = dbattr["child"]
                childName = dbChild["name"]
                formChild = form[childName]
                childValue = [item for item in dbChild["choices"] if item["id"] == formChild.data]
                childValue = childValue[0] if childValue else None
                attributes.append({"name": childName,
                                   "value": childValue,
                                   "printValue": childValue["desc"] if childValue else ""})
        
        elif dbattr["format"] == "textArea":
            # turn a blank text line into "<br><br>" HTML blank line for output.
            # PostgreSQL seems to spit out "\n" and MySQL sends out "\r\n" for line feed
            data = field.data
            printValue = "<br><br>".join(data.split("\n\n")) if data else ""
        
        elif "child_for_" in dbattr["format"]:
            continue

        elif isinstance(field, DateField):
            data = field.data
            value = data.isoformat() if data else ""
            printValue = data.strftime("%m/%d/%Y") if data else ""
           
        elif isinstance(field, DateTimeField):
            data = field.data
            value = data.isoformat() if data else ""
            printValue = data.strftime("%m/%d/%Y %I:%M:%S %p") if data else ""
           
        attributes.append({"name": name,
                           "value": value,
                           "printValue": printValue})

    return {"tableName": tableName, "attributes": attributes}
    
# def getTableNameFromForm(form):
#     """ compare form with prototype instances to find the match """
#     if isinstance(form, forms.Description):
#         tableName = "description"
#     
#     elif isinstance(form, forms.Portfolio):
#         tableName = "portfolio"
#     
#     elif isinstance(form, forms.Project):
#         tableName = "project"
#     
#     elif isinstance(form, forms.Disposition):
#         tableName = "disposition"
#     
#     elif isinstance(form, forms.Comment):
#         tableName = "comment"
#     
#     return tableName
    
# Update database from request. The request will have data for only a single 
# table, and only updated data from that table are returned (?). 
#
# Allow cross origin sources (to make AJAX work), check the jwt and the user's 
# roles before doing anything. CSRF token checking happens at form validation
# time.

def updateFromForm(model, result):
    """utility for updating db model from json and query result"""
    errors = []
    form = model.from_json(request.json, result)
    if form.validate_on_submit():
        try:
            form.populate_obj(result)
            db.session.add(result)
            db.session.commit()
        except:
            errors.append(sys.exc_info()[0])
    else:
        errors = form.errors
    return form, errors
    
@app.route("/projectEdit/<projectID>/<tableName>", methods=["GET", "POST"])
@cross_origin(headers=['Content-Type', 'Authorization'])
@jwt_required()
def projectEdit(projectID, tableName):
    """ update specified table for specified project"""

    if 'Curator' not in current_user.groups:
        # Must be a Curator to edit project metadata
        abort(401)

    if projectID:
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
        p.lastModified = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        if tableName == "description":
            form, errors = updateFromForm(forms.Description, p)
            
            # What is this with maturityID?
            # old_maturityID = p.maturityID
            # if not errors and not descriptionForm.maturityID == old_maturityID:
            if not errors:
                success = "Project description was updated."

        elif tableName == "portfolio":
            form, errors = updateFromForm(forms.Portfolio, p.portfolio[0])
            if not errors:
                success = "Project portfolio entry was updated."

        elif tableName == "project":
            form, errors = updateFromForm(forms.Project, p.project[0])
            if not errors:
                success = "Project management entry was updated."

        elif tableName == "disposition":
            request.json["projectID"] = int(projectID)
            request.json["lastModifiedBy"] = current_user.get_id()
            request.json["lastModified"] = p.lastModified
            disposedInFY = request.json["disposedInFY"]
            disposedInQ = request.json["disposedInQ"]
            d = alch.Disposition.query.filter_by(projectID=projectID)\
                                      .filter_by(disposedInFY=disposedInFY)\
                                      .filter_by(disposedInQ=disposedInQ).first()
            if not d:
                d = alch.Disposition(projectID=projectID)
                d_success = "A new project disposition was created for cycle "
            else:
                d_success = "Updated project disposition for cycle "
            
            form, errors = updateFromForm(forms.Disposition, d)
            if not errors:
                disposedInFY = form["disposedInFY"].data
                FY = [item[1] for item in form["disposedInFY"].choices if item[0] == disposedInFY][0]
                disposedInQ = form["disposedInQ"].data
                Q = [item[1] for item in form["disposedInQ"].choices if item[0] == disposedInQ][0]
                cycle = "{FY} {Q}.".format( FY = FY, Q = Q)
                success = d_success + cycle

        elif tableName == "comment":
            commentID = int(request.json["commentID"])
            if commentID:
                c = alch.Comment.query.filter_by(projectID = projectID)\
                                      .filter_by(commentID = commentID).first_or_404()
                c_success = "The comment was updated."

            else:
                c = alch.Comment(projectID=projectID)
                request.json["commentID"] = None
                request.json["commentAuthor"] = current_user.get_id()
                request.json["commentAuthored"] = p.lastModified
                request.json["commentEditor"] = None
                request.json["commentEdited"] = None
                c_success = "A new comment was created."
            
            form, errors = updateFromForm(forms.Comment, c)
            if not errors:
                success = c_success

        response = getProjectAttributes(projectID, tableName)
        if errors:
            response["errors"] = errors
        else:
            response["success"] = success 
                       
        return json.dumps(response)

# Check the jwt, csrf token, and the user's roles before doing anything.
#
# The data returned are the same as those from getProjectAttributes plus:
#
#    errors    error messages if an error occurred, else nothing
#    success   specific success message if no error occurred, else nothing
 
@app.route("/projectCreate", methods=["POST"])   
@cross_origin(headers=['Content-Type', 'Authorization'])
@jwt_required()
def projectCreate():
    """ create new project """

    if 'Curator' not in current_user.groups:
        # Must be a Curator to edit project metadata
        abort(401)
    
    description_errors = []
    
    p = alch.Description(created = datetime.today().strftime("%Y-%m-%d"),
                         lastModifiedBy = current_user.get_id())

    descriptionForm = forms.Description(request.form, p)
    if descriptionForm.validate_on_submit():
        try:
            descriptionForm.populate_obj(p)
            db.session.add(p)
            db.session.commit()
            projectID = p.projectID
        except:
            description_errors.append(sys.exc_info()[0])
    else:
        description_errors = descriptionForm.errors
    
    if description_errors:
        response = getProjectAttributes(p.projectID or 0, "description")
        response["errors"] = description_errors
        return json.dumps(response)

    pt = alch.Portfolio(projectID = p.projectID,
                        lastModifiedBy = current_user.get_id())
    portfolioForm = forms.Portfolio(request.form, pt)

    pr = alch.Project(projectID = p.projectID,
                      lastModifiedBy = current_user.get_id())
    projectForm = forms.Project(projectID = p.projectID)

    if portfolioForm.validate_on_submit() and projectForm.validate_on_submit():
        try:
            portfolioForm.populate_obj(pt)
            db.session.add(pt)
            projectForm.populate_obj(pr)
            db.session.add(pr)
            db.session.commit()
        except:
            description_errors.append(sys.exc_info()[0])
    else:
        description_errors = portfolioForm.errors + projectForm.errors

    response = getProjectAttributes(projectID, "description")
    if description_errors:
        response["errors"] = description_errors
    else:
        response["success"] = "Created new project"            
        response["projectID"] = projectID

    return json.dumps(response)
         
    
    