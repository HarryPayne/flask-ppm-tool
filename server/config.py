import os
basedir = os.path.abspath(os.path.dirname(__file__))

CSRF_ENABLED = True
SECRET_KEY = 'you-will-never-guess'

OPENID_PROVIDERS = [
    {'name': 'Google', 'url': 'https://www.google.com/accounts/o8/id'},
    {'name': 'Yahoo', 'url': 'https://me.yahoo.com'},
    {'name': 'AOL', 'url': 'http://openid.aol.com/<username>'},
    {'name': 'Flickr', 'url': 'http://www.flickr.com/<username>'},
    {'name': 'MyOpenID', 'url': 'https://www.myopenid.com'}]

#SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'app.db')
SQLALCHEMY_DATABASE_URI = "mysql://root:stormy@localhost/projects"
SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')

# mail server settings
MAIL_SERVER = 'localhost'
MAIL_PORT = 25
MAIL_USERNAME = None
MAIL_PASSWORD = None

# LDAP authentication
LDAP_HOST = "localhost"
LDAP_SEARCH_BASE = "ou=people,o=test"
LDAP_GROUP_SEARCH_BASE = "ou=ZopeRoles,ou=groups,o=test"
LDAP_OBJECTS_DN = "uid"
LDAP_GROUP_OBJECT_FILTER = "objectclass=groupOfUniqueNames"
LDAP_GROUP_MEMBERS_FIELD = "uniquemember"

# administrator list
ADMINS = ['you@example.com']

# JWT options
JWT_EXPIRATION_DELTA = 36000    # 10 hours, maybe get renewal working.
