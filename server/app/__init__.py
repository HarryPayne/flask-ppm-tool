import os
from flask import Flask
from flask_jwt import JWT
import sqlalchemy as sa
from flask.ext.sqlalchemy import SQLAlchemy
from flask.ext.login import LoginManager
from flask.ext.cors import CORS
from config import basedir, LDAP_HOST, LDAP_SEARCH_BASE
import wtforms_json

app = Flask(__name__)
app.config.from_object('config')
app.secret_key = 'aeQ8}tnv]EQzuY9*7jKp39XPMxaaEeFPsrUgpqGnoUo]Fu]yyz'

db = SQLAlchemy(app)
lm = LoginManager()
lm.init_app(app)
jwt = JWT(app)
cors = CORS(app)

wtforms_json.init()

from app import views, models