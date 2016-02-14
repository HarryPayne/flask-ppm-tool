from wtforms_alchemy import ModelForm, ModelFormField, ModelFieldList
from wtforms import (StringField, BooleanField, TextAreaField, SelectField, 
                     TextField, PasswordField, validators, FormField)
from wtforms_components import read_only
from wtforms.ext.sqlalchemy.fields import QuerySelectField, QuerySelectMultipleField
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
class CalendaryearForm(ModelForm):
    class Meta:
        model = alch.Calendaryear
        only= ["calendaryearID", "calendaryearDesc"]
        
class DriverlistForm(ModelForm): 
    class Meta:
        model= alch.Driverlist
              
class FinallistForm(ModelForm):
    class Meta:
        model = alch.Finallist
        only = ["finalID", "finalDesc"]
        
class FiscalyearForm(ModelForm):
    class Meta:
        model = alch.Fiscalyear
        only = ["fiscalyearID", "fiscalyearDesc"]
        
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

class StakeholderlistForm(ModelForm):
    class Meta:
        model = alch.Stakeholderlist
        
class TechnologylistForm(ModelForm):
    class Meta:
        model = alch.Technologylist
        only = ["technologyID", "technologyDesc"]

class TypelistForm(ModelForm): 
    class Meta:
        model = alch.Typelist

def child_choices():
    return alch.Description.query

def driver_choices():
    return alch.Driverlist.query

def stakeholder_choices():
    return alch.Stakeholderlist.query.order_by("stakeholderDesc")

def strategy_choices():
    return alch.Strategylist.query

# Primary table forms
class Description(ModelForm):
    class Meta:
        model = alch.Description
        include_primary_keys = True
        only = ["name", "description", "rationale", "businesscase", "dependencies", 
                "maturityID", "proposer", "customer", "sponsorID", "fundingsourceID", "finalID",
                "hostID", "technologyID", "typeID", "created", "ended", "lastModified",
                "lastModifiedBy"]

    childID = QuerySelectMultipleField(query_factory=child_choices, label="children")
    driverID = QuerySelectMultipleField(query_factory=driver_choices, label="drivers")
    stakeholderID = QuerySelectMultipleField(query_factory=stakeholder_choices, allow_blank=False, label="stakeholders")
    
    def __init__(self, *args, **kwargs):
        super(Description, self).__init__(*args, **kwargs)
        read_only(self.created)
        read_only(self.ended)
    
class Portfolio(ModelForm):
    class Meta:
        model = alch.Portfolio
        include_primary_keys = True
        only = ["flavorID", "initiativeID", "scopeID", "visibilityID", "complexityID", 
                "risklevelID", "costlevelID", "rpu", "budgetInFY", "budgetInQ", 
                "lastModified", "lastModifiedBy"]    

    strategyID = QuerySelectMultipleField(query_factory=strategy_choices, allow_blank=False, label="strategies")

    def __init__(self, *args, **kwargs):
        super(Portfolio, self).__init__(*args, **kwargs)
        read_only(self.lastModified)
        read_only(self.lastModifiedBy)

class Project(ModelForm):
    class Meta:
        model = alch.Project
        include_primary_keys = True
        only = ["proj_manager", "tech_manager", "proj_visibilityID", 
                "project_url", "progressID", "startedOn", "finishedOn", 
                "lastModified", "lastModifiedBy"]

    def __init__(self, *args, **kwargs):
        super(Project, self).__init__(*args, **kwargs)
        read_only(self.lastModified)
        read_only(self.lastModifiedBy)

class Disposition(ModelForm):
    class Meta:
        model = alch.Disposition
        include_primary_keys = True
        only = ["dispositionID", "explanation", "disposedInFY", "disposedInQ", 
                "reconsiderInFY", "reconsiderInQ", "startInY", "startInM", 
                "finishInY", "finishInM", "lastModified", "lastModifiedBy"]

    def __init__(self, *args, **kwargs):
        super(Disposition, self).__init__(*args, **kwargs)
        read_only(self.lastModified)
        read_only(self.lastModifiedBy)

class Latest_disposition(ModelForm):
    class Meta:
        model = alch.Latest_disposition
        include_primary_keys = True
        only = ["dispositionID", "explanation", "disposedInFY", "disposedInQ", 
                "reconsiderInFY", "reconsiderInQ", "startInY", "startInM", 
                "finishInY", "finishInM", "lastModified", "lastModifiedBy"]

    def __init__(self, *args, **kwargs):
        super(Latest_disposition, self).__init__(*args, **kwargs)
        read_only(self.lastModified)
        read_only(self.lastModifiedBy)

class Comment(ModelForm):
    class Meta:
        model = alch.Comment
        include_primary_keys = True
        only = ["commentID", "comment", "commentAuthor", "commentAuthored",
                "commentEditor", "commentEdited"]

    def __init__(self, *args, **kwargs):
        super(Comment, self).__init__(*args, **kwargs)
        read_only(self.commentID)
        read_only(self.commentAuthor)
        read_only(self.commentAuthored)
        read_only(self.commentEditor)
        read_only(self.commentEdited)
    
# Other forms

class LoginForm(Form): 
    username = TextField("Username", [validators.Length(min=2, max=25)])
    password = PasswordField("Password", [validators.Required()])
    remember_me = BooleanField("remember_me", default=False)


