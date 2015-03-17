from flask import (render_template, flash, redirect, session, url_for, request, 
                   g, jsonify)
from flask.ext.login import login_user, logout_user, current_user, login_required
from datetime import datetime
from flask.ext.wtf import Form
from wtforms.ext.sqlalchemy.orm import model_form
from wtforms import StringField, BooleanField, TextAreaField, SelectField
from simplejson import dumps

from app import app, db, lm #, oid
from .forms import Description, SelectForm, LoginForm  # ProjectViewForm, LoginForm, EditForm, PostForm
from .models import User
from widgets import ChoicesSelect
import alchemy_models as alch


@lm.user_loader
def load_user(userid):
    return User(uid=userid)

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
    form = SelectForm()
    choices = []
    for row in alch.Description.query.all():
        choices.append((row.projectID, str(row.projectID) + u": " + row.name))
    form.projectID.choices = choices
    projectID = request.form.get("projectID", None, int)
    if form.validate_on_submit():
        return redirect(url_for('projectView', projectID=projectID))
    return render_template('index.html',
                           title='Select',
                           form=form)

@app.route("/getBriefDescriptions")
def get_brief_descriptions():
    """ return list of project descriptions """
    columns = ["projectID", "name", "description"]
    descriptions = []
    for item in alch.Description.query.all():
        d = {}
        for col in columns:
            d[col] = getattr(item, col)
        descriptions.append(d)
    return dumps(descriptions)
    
@app.route("/projectView", methods=["GET", "POST"])
def projectView():
    projectID = request.values.get("projectID", None, int)
    if projectID:
#         import pydevd
#         pydevd.settrace()
        p = alch.Description.query.filter_by(projectID=projectID).first_or_404()
        form = Description(request.form, p)
        #form.maturity.widget = ChoicesSelect(choices=alch.MATURITY_CHOICES)
        #form.maturity.default = p.maturityID
        #form.host.default = p.hostID
        title = "PPT {id}: {name}".format(
            id = p.projectID,
            name = p.name
            )
        attributes = []
        for row in alch.Attributelist.query.filter_by(table="description").all():
            attributes.append({"name": row.attributeName,
                               "label": row.label,
                               "format": row.format})
        return render_template("view.html",
                               title=title,
                               projectID=projectID,
                               form=form,
                               attributes=attributes)

@app.route("/projectEdit", methods=["GET", "POST"])
@login_required
def projectEdit():
    projectID = request.values.get("projectID", None, int)
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
        attributes = []
        for row in alch.Attributelist.query.filter_by(table="description").all():
            attributes.append({"name": row.attributeName,
                               "label": row.label,
                               "format": row.format,
                               "help": row.help})
        return render_template("edit.html",
                               title=title,
                               projectID=projectID,
                               form=form,
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
