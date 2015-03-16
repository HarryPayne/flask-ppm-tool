from wtforms_alchemy import ModelForm, ModelFormField
from wtforms import (StringField, BooleanField, TextAreaField, SelectField, 
                     TextField, PasswordField, validators)
from wtforms.validators import DataRequired, Length
import alchemy_models as alch

from flask.ext.wtf import Form
from wtforms_alchemy import model_form_factory
# The variable db here is a SQLAlchemy object instance from
# Flask-SQLAlchemy package

from app import db
from widgets import ChoicesSelect

BaseModelForm = model_form_factory(Form)

class ModelForm(BaseModelForm):
    @classmethod
    def get_session(self):
        return db.session

# Forms for select field choices
class FinallistForm(ModelForm):
    class Meta:
        model = alch.Finallist
        only = ["finalID", "finalDesc"]
        
class FundingsourcelistForm(ModelForm):
    class Meta:
        model = alch.Fundingsourcelist
        
class HostlistForm(ModelForm):
    class Meta:
        model = alch.Hostlist
        
class InitiativelistForm(ModelForm):
    class Meta:
        model = alch.Initiativelist
        
class MaturitylistForm(ModelForm):
    class Meta:
        model = alch.Maturitylist
        only = ["maturityID", "maturityDesc"]  
    
class SponsorlistForm(ModelForm): 
    class Meta:
        model = alch.Sponsorlist
        only = ["sponsorID", "sponsorDesc"]

class TechnologylistForm(ModelForm):
    class Meta:
        model = alch.Technologylist
        only = ["technologyID", "technologyDesc"]

class TypelistForm(ModelForm): 
    class Meta:
        model = alch.Typelist
                      
# Primary table forms
class Description(ModelForm):
    class Meta:
        model = alch.Description
        include_primary_keys = True
        only = ["projectID", "name", "description", "rationale", "businesscase", "dependencies", 
                "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "finalID",
                "hostID", "technologyID", "typeID", "created", "ended" ]
    
#     maturity = ModelFormField(MaturitylistForm)
#     maturity.info["choices"] = alch.MATURITY_CHOICES
#     sponsor = ModelFormField(SponsorlistForm)
#     host = ModelFormField(HostlistForm)
#     host.field_class.widget = ChoicesSelect(choices=alch.HOST_CHOICES)
#     technology = ModelFormField(TechnologylistForm)
#     initiative = ModelFormField(InitiativelistForm)
#     type = ModelFormField(TypelistForm)
#     fundingsource = ModelFormField(FundingsourcelistForm)
#     final = ModelFormField(FinallistForm)
    stakeholder = StringField(u"Stakeholders")
    driver = StringField(u"Driver")
    child = StringField(u"Child")
        
class SelectForm(Form):
    projectID = SelectField(u"Jump directly to project ", coerce=int)

class LoginForm(Form): 
    username = TextField("Username", [validators.Length(min=2, max=25)])
    password = PasswordField('Password', [validators.Required()])
    remember_me = BooleanField('remember_me', default=False)


# class ProjectViewForm(Form):
#     projectID = StringField("Project ID")
#     name = StringField("Name")
#     description = TextAreaField("Description")
# 
# class LoginForm(Form):
#     openid = StringField('openid', validators=[DataRequired()])
#     remember_me = BooleanField('remember_me', default=False)
# 
# class EditForm(Form):
#     nickname = StringField('nickname', validators=[DataRequired()])
#     about_me = TextAreaField('about_me', validators=[Length(min=0, max=140)])
# 
#     def __init__(self, original_nickname, *args, **kwargs):
#         Form.__init__(self, *args, **kwargs)
#         self.original_nickname = original_nickname
# 
#     def validate(self):
#         if not Form.validate(self):
#             return False
#         if self.nickname.data == self.original_nickname:
#             return True
#         user = User.query.filter_by(nickname=self.nickname.data).first()
#         if user is not None:
#             self.nickname.errors.append('This nickname is already in use. '
#                                         'Please choose another one.')
#             return False
#         return True
# 
# class PostForm(Form):
#     post = StringField('post', validators=[DataRequired()])