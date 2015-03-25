import os
from flask import Flask
from flask_jwt import JWT
import sqlalchemy as sa
from flask.ext.sqlalchemy import SQLAlchemy
from flask.ext.login import LoginManager
from config import basedir, LDAP_HOST, LDAP_SEARCH_BASE

app = Flask(__name__)
app.config.from_object('config')
app.secret_key = 'Hfd2FaZr7JmqRnhL'

db = SQLAlchemy(app)
#ldap = LDAP(app)
#app.add_url_rule("/login", "login", ldap.login, methods=["GET", "POST"])

lm = LoginManager()
lm.init_app(app)
jwt = JWT(app)

# lm.login_view = 'login'
# oid = OpenID(app, os.path.join(basedir, 'tmp'))

# if not app.debug:
#     import logging
#     from logging.handlers import SMTPHandler
#     credentials = None
#     if MAIL_USERNAME or MAIL_PASSWORD:
#         credentials = (MAIL_USERNAME, MAIL_PASSWORD)
#     mail_handler = SMTPHandler((MAIL_SERVER, MAIL_PORT),
#                                'no-reply@' + MAIL_SERVER, ADMINS,
#                                'microblog failure', credentials)
#     mail_handler.setLevel(logging.ERROR)
#     app.logger.addHandler(mail_handler)
# 
# if not app.debug:
#     import logging
#     from logging.handlers import RotatingFileHandler
#     file_handler = RotatingFileHandler('tmp/microblog.log', 'a',
#                                        1 * 1024 * 1024, 10)
#     file_handler.setLevel(logging.INFO)
#     file_handler.setFormatter(logging.Formatter(
#         '%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]'))
#     app.logger.addHandler(file_handler)
#     app.logger.setLevel(logging.INFO)
#     app.logger.info('microblog startup')

from app import views, models
