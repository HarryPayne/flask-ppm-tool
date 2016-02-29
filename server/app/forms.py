import re
from operator import itemgetter

from flask.ext.wtf import Form
from sqlalchemy.inspection import inspect
from wtforms import (StringField, BooleanField, TextAreaField, SelectField, 
                     TextField, PasswordField, validators, FormField)
from wtforms_alchemy import (ModelForm, ModelFormField, ModelFieldList,
                             model_form_factory)
from wtforms_components import read_only
from wtforms_components.widgets import ReadOnlyWidgetProxy
from wtforms.ext.sqlalchemy.fields import QuerySelectField, QuerySelectMultipleField
from wtforms.validators import DataRequired, Length

from app import db
from widgets import ChoicesSelect
import alchemy_models as alch

BaseModelForm = model_form_factory(Form)

class ModelForm(BaseModelForm):
    @classmethod
    def get_session(cls):
        return db.session
    
    def formly_attributes(self):
        """ return a list of angular-formly fields for the form
        
        
        """
        model = inspect(self.Meta.model)
        attrs = []
        # get keys from table model to preserve order
        for key in model.mapper.columns.keys():
            self._get_attr_from_column(key, model, attrs)
        for key in model.mapper.relationships.keys():
            self._get_attr_from_relationship(key, model, attrs)
        
        # order list by attributeID
        attrs = sorted(attrs, key=itemgetter("attributeID"))
        return attrs
            
    def _get_attr_from_column(self, key, model, attrs):
        """ parse formly attribute properties from a column
        """
        try:
            field = getattr(self, key)
        except:
            return
        column = model.mapper.attrs[key]
        info = model.columns[key].info
        attr = dict()
        attr["attributeID"] = info["attributeID"]
        attr["key"] = key
        attr["type"] = re.sub("Field\\b", "", field.type).lower()
        attr["read_only"] = isinstance(field.widget, ReadOnlyWidgetProxy)
        attr["required"] = field.flags.required
        opt = dict()
        opt["label"] = info["label"] if info.has_key("label") else key
        opt["description"] = info["help"] if info.has_key("help") else ""
        try:
            opt["options"] = [{"id": c[0], "label": c[1]} 
                                for c in field.choices]
            opt["valueProp"] = "id"
            opt["labelProp"] = "label"

        except:
            pass
        attr["templateOptions"] = opt
        
        attrs.append(attr)

    def _get_attr_from_relationship(self, key, model, attrs):
        """ parse additional formly attribute properties from a relationship
        """
        try:
            field = getattr(self, key)
        except:
            return
        if field.type == "QuerySelectMultipleField":
            relationship = model.mapper.attrs[key]
            info = model.relationships[key].info
            attr = dict()
            attr["attributeID"] = info["attributeID"]
            attr["key"] = key
            attr["type"] = "multiselect"
            attr["read_only"] = isinstance(field.widget, ReadOnlyWidgetProxy)
            attr["required"] = field.flags.required
            
            opt = dict()
            opt["label"] = info["label"] if info.has_key("label") else key
            opt["description"] = info["help"] if info.has_key("help") else ""
            choices = list(field.iter_choices())
            tablename = relationship.table.name
            if tablename.endswith("list"):
                desc_name = re.sub("list", "Desc", tablename)
                opt["options"] = [{"id": c[0], "label": getattr(c[1], desc_name)} 
                                  for c in list(choices)]
            elif tablename == "description":
                # for childID relationship that self-references the 
                # description table
                desc_name = "name"
                opt["options"] = [{"id": c[0], 
                                   "label": "{}: {}".format(
                                        c[0],
                                        getattr(c[1], "name"))
                                  } 
                                  for c in list(choices)]
            opt["valueProp"] = "id"
            opt["labelProp"] = "label"
            attr["templateOptions"] = opt
            
            attrs.append(attr)
#         if field.type == "QuerySelectMultipleField":
#             attr["type"] = "multiselect"
#             choices = list(field.iter_choices())
#             # Each choice is a tuple of (value, list table object, boolean)
#             # Look at the object 
#             choice_obj = choices[0][1]
#         return attr
    
    def getChoices(self, column): 
        """ return choices for select elements
        """
        if field.type == "SelectField":
            options = field.choices
    
    def serialize_iter_choices(self, choices, tablename, optional=True):
        """ serialize choices for a field for a multiple select relationship
        
        A choice is a tuple: (value, object, selected). We need to get the
        description from the object. The object properties follow a naming
        convention based on the name of the table.
        """
        if choices:
            desc_name = re.sub("list", "Desc", tablename)
            ret = [{"id": c[0], "desc": getattr(c[1], desc_name)} 
                    for c in list(choices)]
            return ret
        else:
            return None

# Forms for select field choices
class CalendaryearsForm(ModelForm):
    class Meta:
        model = alch.Calendaryears
        only= ["calendaryearID", "calendaryearDesc"]
        
class DriverlistForm(ModelForm): 
    class Meta:
        model= alch.Driverlist
              
class FinallistForm(ModelForm):
    class Meta:
        model = alch.Finallist
        only = ["finalID", "finalDesc"]
        
class FiscalyearsForm(ModelForm):
    class Meta:
        model = alch.Fiscalyears
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
        only = ["dispositionID", "explanation", "disposedInFY", 
                "disposedInQ", "reconsiderInFY", "reconsiderInQ", "startInY",
                "startInM", "finishInY", "finishInM", "lastModified", 
                "lastModifiedBy"]

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


