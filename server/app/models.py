from flask.ext.login import UserMixin
import simpleldap

from hashlib import md5
from app import db
from config import (LDAP_HOST, LDAP_SEARCH_BASE, LDAP_GROUP_SEARCH_BASE, LDAP_OBJECTS_DN, 
                    LDAP_GROUP_OBJECT_FILTER, LDAP_GROUP_MEMBERS_FIELD)

def ldap_fetch(uid=None, name=None, passwd=None):
    try:
        dn = "uid={0},{1}".format(uid, LDAP_SEARCH_BASE)

        if uid is not None and passwd is not None:
            l = simpleldap.Connection(LDAP_HOST, dn=dn, password=passwd)
        else:
            l = simpleldap.Connection(LDAP_HOST)
        r = l.search('uid={0}'.format(uid), base_dn=LDAP_SEARCH_BASE)
        g = l.search("(&({0})({1}={2}))".format(LDAP_GROUP_OBJECT_FILTER, 
                                                LDAP_GROUP_MEMBERS_FIELD, dn), 
                                                base_dn=LDAP_GROUP_SEARCH_BASE)
        return {
            'uid': r[0]['uid'][0],
            'name': unicode(r[0]['cn'][0]),
            "givenName": unicode(r[0]["givenname"][0]),
            "sn": unicode(r[0]["sn"][0]),
            "mail": r[0]["mail"][0],
            "groups": [item["cn"][0] for item in g]
        }
    except:
        return None

class User(UserMixin):
    def __init__(self, id=None, name=None, passwd=None, groups=None, mail=None):
        
        self.id = id
        self.name = name
        self.groups = groups
        self.mail = mail
        self.active = False
        ldapres = ldap_fetch(uid=id, name=name, passwd=passwd)

        if ldapres is not None:
            self.id = ldapres["uid"]
            self.groups = ldapres["groups"]
            self.name = ldapres["name"]
            self.firstname = ldapres["givenName"]
            self.lastname = ldapres["sn"]
            self.mail = ldapres["mail"]
            self.active = True

    def is_active(self):
        return self.active

    def get_id(self):
        return unicode(self.id)
    
    def get_user(self):
        return {"id": self.id,
                "name": self.name,
                "firstname": self.firstname,
                "lastname": self.lastname,
                "mail": self.mail,
                "groups": self.groups,
                "is_active": self.active}

    def __repr__(self):
        return '<User %r>' % (self.id)

