from flask.ext.login import UserMixin
import simpleldap

from hashlib import md5
from app import db
from config import LDAP_HOST, LDAP_SEARCH_BASE, LDAP_GROUP_SEARCH_BASE, LDAP_OBJECTS_DN, LDAP_GROUP_OBJECT_FILTER, LDAP_GROUP_MEMBERS_FIELD

def ldap_fetch(uid=None, name=None, passwd=None):
    try:
        if uid is not None and passwd is not None:
            dn = "uid={0},{1}".format(uid, LDAP_SEARCH_BASE)
            l = simpleldap.Connection(LDAP_HOST, dn=dn, password=passwd)
            r = l.search('uid={0}'.format(uid), base_dn=LDAP_SEARCH_BASE)
            g = l.search("(&({0})({1}={2}))".format(LDAP_GROUP_OBJECT_FILTER, LDAP_GROUP_MEMBERS_FIELD, dn), base_dn=LDAP_GROUP_SEARCH_BASE)
        else:
            l = simpleldap.Connection(LDAP_HOST)
            r = l.search('uid={0}'.format(uid), base_dn=LDAP_SEARCH_BASE)

        return {
            'uid': r[0]['uid'][0],
            'name': unicode(r[0]['cn'][0]),
            "mail": r[0]["mail"][0],
            "groups": [item["cn"][0] for item in g]
        }
    except:
        return None

class User(UserMixin):
    def __init__(self, uid=None, name=None, passwd=None):
        
        self.active = False
        ldapres = ldap_fetch(uid=uid, name=name, passwd=passwd)

        if ldapres is not None:
            self.id = ldapres["uid"]
            self.groups = ldapres["groups"]
            self.name = ldapres["name"]
            self.mail = ldapres["mail"]
            self.active = True

    def is_active(self):
        return self.active

    def get_id(self):
        return unicode(self.id)
    
    def get_user(self):
        return {"id": self.id,
                "name": self.name,
                "mail": self.mail,
                "groups": self.groups,
                "is_active": self.active}

    def __repr__(self):
        return '<User %r>' % (self.uid)

# followers = db.Table(
#     'followers',
#     db.Column('follower_id', db.Integer, db.ForeignKey('user.id')),
#     db.Column('followed_id', db.Integer, db.ForeignKey('user.id'))
# )


# class UserOrig(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     nickname = db.Column(db.String(64), index=True, unique=True)
#     email = db.Column(db.String(120), index=True, unique=True)
#     posts = db.relationship('Post', backref='author', lazy='dynamic')
#     about_me = db.Column(db.String(140))
#     last_seen = db.Column(db.DateTime)
#     followed = db.relationship('User',
#                                secondary=followers,
#                                primaryjoin=(followers.c.follower_id == id),
#                                secondaryjoin=(followers.c.followed_id == id),
#                                backref=db.backref('followers', lazy='dynamic'),
#                                lazy='dynamic')
# 
#     @staticmethod
#     def make_unique_nickname(nickname):
#         if User.query.filter_by(nickname=nickname).first() is None:
#             return nickname
#         version = 2
#         while True:
#             new_nickname = nickname + str(version)
#             if User.query.filter_by(nickname=new_nickname).first() is None:
#                 break
#             version += 1
#         return new_nickname
# 
#     def is_authenticated(self):
#         return True
# 
#     def is_active(self):
#         return True
# 
#     def is_anonymous(self):
#         return False
# 
#     def get_id(self):
#         try:
#             return unicode(self.id)  # python 2
#         except NameError:
#             return str(self.id)  # python 3
# 
#     def avatar(self, size):
#         return 'http://www.gravatar.com/avatar/%s?d=mm&s=%d' % \
#             (md5(self.email.encode('utf-8')).hexdigest(), size)
# 
#     def follow(self, user):
#         if not self.is_following(user):
#             self.followed.append(user)
#             return self
# 
#     def unfollow(self, user):
#         if self.is_following(user):
#             self.followed.remove(user)
#             return self
# 
#     def is_following(self, user):
#         return self.followed.filter(
#             followers.c.followed_id == user.id).count() > 0
# 
#     def followed_posts(self):
#         return Post.query.join(
#             followers, (followers.c.followed_id == Post.user_id)).filter(
#                 followers.c.follower_id == self.id).order_by(
#                     Post.timestamp.desc())
# 
#     def __repr__(self):
#         return '<User %r>' % (self.nickname)
# 
# 
# class Post(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     body = db.Column(db.String(140))
#     timestamp = db.Column(db.DateTime)
#     user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
# 
#     def __repr__(self):
#         return '<Post %r>' % (self.body)
