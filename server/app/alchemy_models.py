# coding: utf-8
import sqlalchemy as sa
from sqlalchemy import (BLOB, Column, Date, DateTime, Enum, ForeignKey, Float, Integer, 
                        orm, SmallInteger, String, Table, Text, text)
from sqlalchemy_utils import ChoiceType
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.dialects.mysql.base import MEDIUMBLOB

from widgets import ChoicesSelect

# mostly Autogenerated by ../make_sqlalchemy_models

# added by hand:
from app import db
Base = db.Model
metadata = db.metadata


class Attributelist(Base):
    __tablename__ = 'newattributelist'
#    __tablename__ = 'attributelist'

    attributeID = Column(Integer, primary_key=True, server_default=text("'0'"))
    attributeName = Column(String(32), nullable=False, server_default=text("''"))
    format = Column(String(32), nullable=False, server_default=text("''"))
    pptTable = Column(String(32))
    table = Column(String(32), nullable=False, server_default=text("''"))
    label = Column(String, nullable=False)
    help = Column(Text, nullable=False)
    attributeHelp = Column(Integer, nullable=False, server_default=text("'0'"))
    byMonth = Column(Integer, nullable=False, server_default=text("'0'"))
    byQuarter = Column(Integer, nullable=False, server_default=text("'0'"))
    computed = Column(Integer, nullable=False, server_default=text("'0'"))
    keepHistory = Column(Integer, nullable=False, server_default=text("'0'"))
    multipleValued = Column(Integer, nullable=False, server_default=text("'0'"))
    getByID = Column(String(32), nullable=False, server_default=text("''"))
    orderByID = Column(Integer, nullable=False, server_default=text("'0'"))

class Complexitylist(Base):
    __tablename__ = 'complexitylist'

    complexityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    complexityDesc = Column(String(100), nullable=False, server_default=text("''"))
    complexityText = Column(Text, nullable=False)


class Costlevellist(Base):
    __tablename__ = 'costlevellist'

    costlevelID = Column(Integer, primary_key=True, server_default=text("'0'"))
    costlevelDesc = Column(String(100), nullable=False, server_default=text("''"))
    costlevelText = Column(Text, nullable=False)


class Criticallist(Base):
    __tablename__ = 'criticallist'

    criticalID = Column(Integer, primary_key=True, server_default=text("'0'"))
    criticalDesc = Column(String(100), nullable=False, server_default=text("''"))


class Dispositionlist(Base):
    __tablename__ = 'dispositionlist'

    dispositionID = Column(Integer, primary_key=True, server_default=text("'0'"))
    dispositionDesc = Column(String(100), nullable=False, server_default=text("''"))
    dispositionText = Column(Text, nullable=False)


t_distributionlist = Table(
    'distributionlist', metadata,
    Column('address', String(32), nullable=False, index=True, server_default=text("''"))
)


t_edit_log = Table(
    'edit_log', metadata,
    Column('user', String(100), nullable=False, index=True, server_default=text("''")),
    Column('projectID', SmallInteger, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'")),
    Column('action', String(100), nullable=False, server_default=text("''")),
    Column('timestamp', DateTime, nullable=False, index=True, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
)


class Finallist(Base):
    __tablename__ = 'finallist'

    finalID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                         primary_key=True, server_default=text("'0'"))
    finalDesc = Column(String(100), nullable=False, server_default=text("''"))
    finalText = Column(Text, nullable=False)


class Flavorlist(Base):
    __tablename__ = 'flavorlist'

    flavorID = Column(Integer, primary_key=True, server_default=text("'0'"))
    flavorDesc = Column(String(100), nullable=False, server_default=text("''"))
    flavorText = Column(Text, nullable=False)


class Fundingsourcelist(Base):
    __tablename__ = 'fundingsourcelist'

    fundingsourceID = Column(Integer, 
                             info={"widget": ChoicesSelect()},
                             primary_key=True, server_default=text("'0'"))
    fundingsourceDesc = Column(String(100, u'latin1_bin'), nullable=False, server_default=text("''"))
    fundingsourceText = Column(Text, nullable=False)


class Hostlist(Base):
    __tablename__ = 'hostlist'

    hostID = Column(Integer, 
#                     info={"widget": ChoicesSelect()},
                    primary_key=True, server_default=text("'0'"))
    hostDesc = Column(String(100), nullable=False, server_default=text("''"))
    hostText = Column(Text, nullable=False)


class Initiativelist(Base):
    __tablename__ = 'initiativelist'

    initiativeID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                         primary_key=True, server_default=text("'0'"))
    initiativeDesc = Column(String(100), nullable=False, server_default=text("''"))
    initiativeText = Column(Text, nullable=False)


class Maturitylist(Base):
    __tablename__ = 'maturitylist'

    maturityID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                        primary_key=True, server_default=text("'0'"))
    maturityDesc = Column(String(100), nullable=False, server_default=text("''"))
    maturityText = Column(Text, nullable=False)
    


class Progresslist(Base):
    __tablename__ = 'progresslist'

    progressID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                        primary_key=True, server_default=text("'0'"))
    progressDesc = Column(String(100), nullable=False, server_default=text("''"))
    progressText = Column(Text, nullable=False)


class Proj_visibilitylist(Base):
    __tablename__ = 'proj_visibilitylist'

    proj_visibilityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    proj_visibilityDesc = Column(String(100), nullable=False, server_default=text("''"))
    proj_visibilityText = Column(Text, nullable=False)


class Risklevellist(Base):
    __tablename__ = 'risklevellist'

    risklevelID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                         primary_key=True, server_default=text("'0'"))
    risklevelDesc = Column(String(100), nullable=False, server_default=text("''"))
    risklevelText = Column(Text, nullable=False)


class Scopelist(Base):
    __tablename__ = 'scopelist'

    scopeID = Column(Integer, 
                     info={"widget": ChoicesSelect()},
                     primary_key=True, server_default=text("'0'"))
    scopeDesc = Column(String(100), nullable=False, server_default=text("''"))
    scopeText = Column(Text, nullable=False)


class Sponsorlist(Base):
    __tablename__ = 'sponsorlist'

    sponsorID = Column(Integer, 
                       info={"widget": ChoicesSelect()},
                       primary_key=True, server_default=text("'0'"))
    sponsorDesc = Column(String(100), nullable=False, server_default=text("''"))
    sponsorText = Column(Text, nullable=False)


class Statuslist(Base):
    __tablename__ = 'statuslist'

    statusID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                         primary_key=True, server_default=text("'0'"))
    statusDesc = Column(String(100), nullable=False, server_default=text("''"))


class Strategylist(Base):
    __tablename__ = 'strategylist'

    strategyID = Column(Integer, primary_key=True, server_default=text("'0'"))
    strategyDesc = Column(String(100), nullable=False, server_default=text("''"))
    strategyText = Column(Text, nullable=False)


class StrategylistBak(Base):
    __tablename__ = 'strategylist_bak'

    strategyID = Column(Integer, primary_key=True, server_default=text("'0'"))
    strategyDesc = Column(String(100), nullable=False, server_default=text("''"))
    strategyText = Column(Text, nullable=False)


class Technologylist(Base):
    __tablename__ = 'technologylist'

    technologyID = Column(Integer, 
                          info={"widget": ChoicesSelect()},
                          primary_key=True, server_default=text("'0'"))
    technologyDesc = Column(String(100), nullable=False, server_default=text("''"))
    technologyText = Column(Text, nullable=False)
    technologyRationale = Column(Text, nullable=False)


class Typelist(Base):
    __tablename__ = 'typelist'

    typeID = Column(Integer, 
                        info={"widget": ChoicesSelect()},
                         primary_key=True, server_default=text("'0'"))
    typeDesc = Column(String(100), nullable=False, server_default=text("''"))
    typeText = Column(Text, nullable=False)


t_upload = Table(
    'upload', metadata,
    Column('uploadID', Integer, nullable=False, index=True),
    Column('projectID', Integer, ForeignKey("description.projectID"), nullable=False),
    Column('uploadName', String(64), nullable=False),
    Column('uploadType', String(32), nullable=False),
    Column('uploadDesc', Text, nullable=False),
    Column('uploadData', MEDIUMBLOB, nullable=False),
    Column('lastModifiedBy', String(100), nullable=False),
    Column('lastModified', DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
)

# class Upload(Base):
#     __tablename__ = "upload"
# 
#     uploadID = Column(Integer, primary_key=True, nullable=False, index=True)
#     projectID = Column(Integer, ForeignKey("description.projectID"), nullable=False)
#     uploadName = Column(String(64), nullable=False)
#     uploadType = Column(String(32), nullable=False)
#     uploadDesc = Column(Text, nullable=False)
#     uploadData = Column(BLOB, nullable=False)
#     lastModifiedBy = Column(String(100), nullable=False)
#     lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
#     
#     description = db.relationship("Description", backref="uploads")



class Visibilitylist(Base):
    __tablename__ = 'visibilitylist'

    visibilityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    visibilityDesc = Column(String(100), nullable=False, server_default=text("''"))
    visibilityText = Column(Text, nullable=False)


class Comment(Base):
    __tablename__ = 'comment'

    commentID = Column(Integer, primary_key=True)
    projectID = Column(Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'"))
    user = Column(String(100), nullable=False, index=True, server_default=text("''"))
    date = Column(DateTime, nullable=False, index=True, server_default=text("'0000-00-00 00:00:00'"))
    comment = Column(Text, nullable=False)

    description = db.relationship("Description", backref="comments")

# vocabularies for rendering IDs as a select dropdown.
# MATURITY_CHOICES = []
# for row in Maturitylist.query.all():
#     MATURITY_CHOICES.append((row.maturityID, row.maturityDesc))
# SPONSOR_CHOICES = []
# for row in Sponsorlist.query.all():
#     SPONSOR_CHOICES.append((row.sponsorID, row.sponsorDesc))
# HOST_CHOICES = []INITIATIVE_CHOICES
# for row in Hostlist.query.all():
#     HOST_CHOICES.append((row.hostID, row.hostDesc))
# TECHNOLOGY_CHOICES = []
# for row in Technologylist.query.all():
#     TECHNOLOGY_CHOICES.append((row.technologyID, row.technologyDesc))
# INITIATIVE_CHOICES = []
# for row in Initiativelist.query.all():
#     INITIATIVE_CHOICES.append((row.initiativeID, row.initiativeDesc))
# CRITICAL_CHOICES = []
# for row in Criticallist.query.all():
#     CRITICAL_CHOICES.append((row.criticalID, row.criticalDesc))
# TYPE_CHOICES = []
# for row in Typelist.query.all():
#     TYPE_CHOICES.append((row.typeID, row.typeDesc))
# FUNDINGSOURCE_CHOICES = []
# for row in Fundingsourcelist.query.all():
#     FUNDINGSOURCE_CHOICES.append((row.fundingsourceID, row.fundingsourceDesc))
# FINAL_CHOICES = []
# for row in Finallist.query.all():
#     FINAL_CHOICES.append((row.finalID, row.finalDesc))
# INITIATIVE_CHOICES = []
# for row in Initiativelist.query.all():
#     INITIATIVE_CHOICES.append((row.initiativeID, row.initiativeDesc))

class Stakeholderlist(Base):
    __tablename__ = 'stakeholderlist'

    stakeholderID = Column(Integer, primary_key=True, server_default=text("'0'"))
    stakeholderDesc = Column(String(100), nullable=False, server_default=text("''"))
    stakeholderText = Column(Text, nullable=False)

t_stakeholder = Table(
    'stakeholder', metadata,
    Column('projectID', SmallInteger, ForeignKey("description.projectID"),nullable=False, index=True, server_default=text("'0'")),
    Column('stakeholderID', Integer, ForeignKey("stakeholderlist.stakeholderID"),nullable=False, index=True, server_default=text("'0'"))
)

class Driverlist(Base):
    __tablename__ = 'driverlist'

    driverID = Column(Integer, primary_key=True, server_default=text("'0'"))
    driverDesc = Column(String(100), nullable=False, server_default=text("''"))
    driverText = Column(Text, nullable=False)

t_driver = Table(
    'driver', metadata,
    Column('projectID', Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'")),
    Column('driverID', Integer, ForeignKey("driverlist.driverID"),nullable=False, index=True, server_default=text("'0'"))
)

# class Child(Base):
#     __tablename__ = 'child'
#        
#     childID = Column(Integer, ForeignKey("description.projectID"), primary_key=True,
#            nullable=False, index=True, server_default=text("'0'"))
#     projectID = Column(Integer, ForeignKey("description.projectID"), primary_key=True,
#            nullable=False, index=True, server_default=text("'0'"))

t_child = Table(
    'child', metadata,
    Column('projectID', Integer, ForeignKey("description.projectID"), primary_key=True),
    Column('childID', Integer, ForeignKey("description.projectID"), primary_key=True)
)

class Description(Base):
    __tablename__ = 'description'
        
    projectID = Column(SmallInteger, primary_key=True, server_default=text("'0'"))
    name = Column(String(100), nullable=False, index=True, server_default=text("''"))
    description = Column(Text, nullable=False, index=True)
    rationale = Column(Text, nullable=True, index=True, server_default=text("''"))
    businesscase = Column(Text, nullable=True, index=True, server_default=text("''"))
    dependencies = Column(Text, nullable=True, index=True, server_default=text("''"))
    maturityID = Column(Integer, ForeignKey(Maturitylist.maturityID), 
                        #info={"choices": MATURITY_CHOICES},
                        nullable=False, index=True, server_default=text("'0'"))
    proposer = Column(String(100), nullable=False, server_default=text("''"))
    customer = Column(String(100), nullable=True, server_default=text("''"))
    sponsorID = Column(Integer, ForeignKey(Sponsorlist.sponsorID), 
                       #info={"choices": SPONSOR_CHOICES},
                       nullable=False, index=True, server_default=text("'0'"))
    hostID = Column(Integer, ForeignKey(Hostlist.hostID),
                    #info={"choices": HOST_CHOICES}, 
                    nullable=False, index=True, server_default=text("'0'"))
    technologyID = Column(Integer, ForeignKey(Technologylist.technologyID),
                         #info={"choices": TECHNOLOGY_CHOICES}, 
                          nullable=False, server_default=text("'0'"))
    initiativeID = Column(Integer, ForeignKey(Initiativelist.initiativeID),
                          #info={"choices": INITIATIVE_CHOICES}, 
                          nullable=False, server_default=text("'0'"))
    criticalID = Column(Integer, nullable=False, server_default=text("'0'"))
    typeID = Column(Integer, ForeignKey(Typelist.typeID),
                    #info={"choices": TYPE_CHOICES}, 
                    nullable=False, server_default=text("'0'"))
    fundingsourceID = Column(Integer, ForeignKey(Fundingsourcelist.fundingsourceID),
                             #info={"choices": FUNDINGSOURCE_CHOICES}, 
                             nullable=False, server_default=text("'0'"))
    created = Column(Date, nullable=False, server_default=text("'0000-00-00'"))
    ended = Column(Date, nullable=True, server_default=text("'0000-00-00'"))
    finalID = Column(Integer, ForeignKey(Finallist.finalID),
                     #info={"choices": FINAL_CHOICES}, 
                     nullable=False, index=True, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))
    
#     childID = db.relationship("Child",
#                               primaryjoin=projectID==Child.projectID,
#                               backref="children")
    childID = db.relationship("Description", 
                               secondary=t_child,
                               primaryjoin=projectID==t_child.c.projectID,
                               secondaryjoin=projectID==t_child.c.childID,
                               order_by=projectID,
                               backref="children")
    driverID = db.relationship("Driverlist", secondary=t_driver)
    stakeholderID = db.relationship("Stakeholderlist", secondary=t_stakeholder)
    
#     portfolios = db.relationship("Portfolio", 
#                                 primaryjoin="description.projectID==portfolio.projectID",
#                                 backref="description")
        
class Disposition(Base):
    __tablename__ = 'disposition'

    disposeID = Column(SmallInteger, primary_key=True)
    projectID = Column(SmallInteger, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'"))
    dispositionID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    explanation = Column(Text, nullable=False, index=True)
    disposedInFY = Column(SmallInteger, nullable=False, index=True, server_default=text("'0'"))
    disposedInQ = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    reconsiderInFY = Column(SmallInteger, nullable=False, server_default=text("'0'"))
    reconsiderInQ = Column(Integer, nullable=False, server_default=text("'0'"))
    startInY = Column(SmallInteger, nullable=False, server_default=text("'0'"))
    startInM = Column(Integer, nullable=False, server_default=text("'0'"))
    finishInY = Column(SmallInteger, nullable=False, server_default=text("'0'"))
    finishInM = Column(Integer, nullable=False, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))

    description = db.relationship("Description", backref="disposition")


class History(Base):
    __tablename__ = 'history'

    historyID = Column(Integer, primary_key=True)
    projectID = Column(Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'"))
    attributeName = Column(String(100), nullable=False, server_default=text("''"))
    oldValue = Column(Integer, nullable=False, server_default=text("'0'"))
    newValue = Column(Integer, nullable=False, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))



t_months = Table(
    'months', metadata,
    Column('monthID', Integer, nullable=False, index=True, server_default=text("'0'")),
    Column('monthDesc', String(3), nullable=False, server_default=text("''"))
)

t_strategy = Table(
    'strategy', metadata,
    Column('projectID', Integer, ForeignKey("portfolio.projectID"),
           nullable=False, index=True, server_default=text("'0'")),
    Column('strategyID', Integer, ForeignKey("strategylist.strategyID"),
           nullable=False, index=True, server_default=text("'0'"))
)

class Portfolio(Base):
    __tablename__ = 'portfolio'

    projectID = Column(SmallInteger, ForeignKey("description.projectID"), primary_key=True)
    latest_disposeID = Column(SmallInteger, nullable=False, server_default=text("'0'"))
    criticalID = Column(Integer, nullable=False, server_default=text("'0'"))
    flavorID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    initiativeID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    scopeID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    visibilityID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    complexityID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    risklevelID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    costlevelID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    rpu = Column(Float, nullable=False, server_default=text("'0'"))
    budgetInFY = Column(SmallInteger, nullable=False, index=True, server_default=text("'0'"))
    budgetInQ = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))

    strategyID = db.relationship("Strategylist", secondary=t_strategy)
    description = db.relationship("Description", backref="portfolio")

class Project(Base):
    __tablename__ = 'project'

    projectID = Column(SmallInteger, ForeignKey("description.projectID"), primary_key=True, server_default=text("'0'"))
    org_branchID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    proj_manager = Column(String(100), nullable=False, index=True, server_default=text("''"))
    tech_manager = Column(String(100), nullable=False, index=True, server_default=text("''"))
    proj_visibilityID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    project_url = Column(String(255), nullable=False, server_default=text("''"))
    progressID = Column(Integer, nullable=False, index=True, server_default=text("'0'"))
    statusID = Column(Integer)
    startedOn = Column(Date, nullable=False, index=True, server_default=text("'0000-00-00'"))
    finishedOn = Column(Date, nullable=False, index=True, server_default=text("'0000-00-00'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))
    
    description = db.relationship("Description", backref="project")


class Quarter(Base):
    __tablename__ = 'quarters'

    quarterID = Column(Integer, primary_key=True, server_default=text("'0'"))
    quarterDesc = Column(String(12), nullable=False, server_default=text("''"))



t_years = Table(
    'years', metadata,
    Column('year', Integer, nullable=False, index=True, server_default=text("'0'"))
)
