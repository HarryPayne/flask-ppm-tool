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
    __tablename__ = "newattributelist"
#    __tablename__ = "attributelist"

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
    __tablename__ = "complexitylist"

    complexityID = Column(Integer, 
                          primary_key=True, server_default=text("'0'"))
    complexityDesc = Column(String(100), nullable=False, server_default=text("''"))
    complexityText = Column(Text, nullable=False)


class Costlevellist(Base):
    __tablename__ = "costlevellist"

    costlevelID = Column(Integer, primary_key=True, server_default=text("'0'"))
    costlevelDesc = Column(String(100), nullable=False, server_default=text("''"))
    costlevelText = Column(Text, nullable=False)


class Criticallist(Base):
    __tablename__ = "criticallist"

    criticalID = Column(Integer, primary_key=True, server_default=text("'0'"))
    criticalDesc = Column(String(100), nullable=False, server_default=text("''"))


class Dispositionlist(Base):
    __tablename__ = "dispositionlist"

    dispositionID = Column(Integer, 
                           primary_key=True, server_default=text("'0'"))
    dispositionDesc = Column(String(100), nullable=False, server_default=text("''"))
    dispositionText = Column(Text, nullable=False)


t_distributionlist = Table(
    "distributionlist", metadata,
    Column("address", String(32), nullable=False, index=True, server_default=text("''"))
)


t_edit_log = Table(
    "edit_log", metadata,
    Column("user", String(100), nullable=False, index=True, server_default=text("''")),
    Column("projectID", SmallInteger, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'")),
    Column("action", String(100), nullable=False, server_default=text("''")),
    Column("timestamp", DateTime, nullable=False, index=True, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
)


class Finallist(Base):
    __tablename__ = "finallist"

    finalID = Column(Integer, primary_key=True, server_default=text("'0'"))
    finalDesc = Column(String(100), nullable=False, server_default=text("''"))
    finalText = Column(Text, nullable=False)


class Flavorlist(Base):
    __tablename__ = "flavorlist"

    flavorID = Column(Integer, primary_key=True, server_default=text("'0'"))
    flavorDesc = Column(String(100), nullable=False, server_default=text("''"))
    flavorText = Column(Text, nullable=False)


class Fundingsourcelist(Base):
    __tablename__ = "fundingsourcelist"

    fundingsourceID = Column(Integer, primary_key=True, server_default=text("'0'"))
    fundingsourceDesc = Column(String(100, u"latin1_bin"), nullable=False, server_default=text("''"))
    fundingsourceText = Column(Text, nullable=False)


class Hostlist(Base):
    __tablename__ = "hostlist"

    hostID = Column(Integer, primary_key=True, server_default=text("'0'"))
    hostDesc = Column(String(100), nullable=False, server_default=text("''"))
    hostText = Column(Text, nullable=False)


class Initiativelist(Base):
    __tablename__ = "initiativelist"

    initiativeID = Column(Integer, primary_key=True, server_default=text("'0'"))
    initiativeDesc = Column(String(100), nullable=False, server_default=text("''"))
    initiativeText = Column(Text, nullable=False)


class Maturitylist(Base):
    __tablename__ = "maturitylist"

    maturityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    maturityDesc = Column(String(100), nullable=False, server_default=text("''"))
    maturityText = Column(Text, nullable=False)
    


class Progresslist(Base):
    __tablename__ = "progresslist"

    progressID = Column(Integer, primary_key=True, server_default=text("'0'"))
    progressDesc = Column(String(100), nullable=False, server_default=text("''"))
    progressText = Column(Text, nullable=False)


class Proj_visibilitylist(Base):
    __tablename__ = "proj_visibilitylist"

    proj_visibilityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    proj_visibilityDesc = Column(String(100), nullable=False, server_default=text("''"))
    proj_visibilityText = Column(Text, nullable=False)


class Risklevellist(Base):
    __tablename__ = "risklevellist"

    risklevelID = Column(Integer, primary_key=True, server_default=text("'0'"))
    risklevelDesc = Column(String(100), nullable=False, server_default=text("''"))
    risklevelText = Column(Text, nullable=False)


class Scopelist(Base):
    __tablename__ = "scopelist"

    scopeID = Column(Integer, primary_key=True, server_default=text("'0'"))
    scopeDesc = Column(String(100), nullable=False, server_default=text("''"))
    scopeText = Column(Text, nullable=False)


class Sponsorlist(Base):
    __tablename__ = "sponsorlist"

    sponsorID = Column(Integer, primary_key=True, server_default=text("'0'"))
    sponsorDesc = Column(String(100), nullable=False, server_default=text("''"))
    sponsorText = Column(Text, nullable=False)


class Statuslist(Base):
    __tablename__ = "statuslist"

    statusID = Column(Integer, primary_key=True, server_default=text("'0'"))
    statusDesc = Column(String(100), nullable=False, server_default=text("''"))


class Strategylist(Base):
    __tablename__ = "strategylist"

    strategyID = Column(Integer, primary_key=True, server_default=text("'0'"))
    strategyDesc = Column(String(100), nullable=False, server_default=text("''"))
    strategyText = Column(Text, nullable=False)


class Technologylist(Base):
    __tablename__ = "technologylist"

    technologyID = Column(Integer, primary_key=True, server_default=text("'0'"))
    technologyDesc = Column(String(100), nullable=False, server_default=text("''"))
    technologyText = Column(Text, nullable=False)
    technologyRationale = Column(Text, nullable=False)


class Typelist(Base):
    __tablename__ = "typelist"

    typeID = Column(Integer, primary_key=True, server_default=text("'0'"))
    typeDesc = Column(String(100), nullable=False, server_default=text("''"))
    typeText = Column(Text, nullable=False)


t_upload = Table(
    "upload", metadata,
    Column("uploadID", Integer, nullable=False, index=True),
    Column("projectID", Integer, ForeignKey("description.projectID"), nullable=False),
    Column("uploadName", String(64), nullable=False),
    Column("uploadType", String(32), nullable=False),
    Column("uploadDesc", Text, nullable=False),
    Column("uploadData", MEDIUMBLOB, nullable=False),
    Column("lastModifiedBy", String(100), nullable=False),
    Column("lastModified", DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
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
    __tablename__ = "visibilitylist"

    visibilityID = Column(Integer, primary_key=True, server_default=text("'0'"))
    visibilityDesc = Column(String(100), nullable=False, server_default=text("''"))
    visibilityText = Column(Text, nullable=False)

class Year(Base):
    __tablename__ = "years"
    
    year = Column(Integer, primary_key=True, server_default=text("'0'"))
    
class Calendaryear(Base):
    __tablename__ = "calendaryears"
    
    calendaryearID = Column(Integer, primary_key=True, server_default=text("'0'"))
    calendaryearDesc = Column(String(4), nullable=False, server_default=text("''"))
    
class Fiscalyear(Base):
    __tablename__ = "fiscalyears"
    
    fiscalyearID = Column(Integer, primary_key=True, server_default=text("'0'"))
    fiscalyearDesc = Column(String(6), nullable=False, server_default=text("''"))
    
class Quarter(Base):
    __tablename__ = "quarters"

    quarterID = Column(Integer, primary_key=True, server_default=text("'0'"))
    quarterDesc = Column(String(12), nullable=False, server_default=text("''"))

class Month(Base):
    __tablename__ = "months"
    
    monthID = Column(Integer, primary_key=True, server_default=text("'0'"))
    monthDesc = Column(String(12), nullable=False, server_default=text("''"))

# vocabularies for rendering IDs as a select dropdown.
COMPLEXITY_CHOICES = []
for row in Complexitylist.query.order_by("complexityID").all():
    COMPLEXITY_CHOICES.append((row.complexityID, row.complexityDesc))
COST_CHOICES = []
for row in Costlevellist.query.order_by("costlevelID").all():
    COST_CHOICES.append((row.costlevelID, row.costlevelDesc))
CRITICAL_CHOICES = []
for row in Criticallist.query.order_by("criticalDesc").all():
    CRITICAL_CHOICES.append((row.criticalID, row.criticalDesc))
DISPOSITION_CHOICES = []
for row in Dispositionlist.query.order_by("dispositionID").all():
    DISPOSITION_CHOICES.append((row.dispositionID, row.dispositionDesc))
FINAL_CHOICES = []
for row in Finallist.query.order_by("finalID").all():
    FINAL_CHOICES.append((row.finalID, row.finalDesc))
FLAVOR_CHOICES = []
for row in Flavorlist.query.order_by("flavorID").all():
    FLAVOR_CHOICES.append((row.flavorID, row.flavorDesc))
FUNDINGSOURCE_CHOICES = []
for row in Fundingsourcelist.query.order_by("fundingsourceID").all():
    FUNDINGSOURCE_CHOICES.append((row.fundingsourceID, row.fundingsourceDesc))
FY_CHOICES = []
for row in Fiscalyear.query.order_by("fiscalyearID").all():
    FY_CHOICES.append((row.fiscalyearID, row.fiscalyearDesc))
HOST_CHOICES = []
for row in Hostlist.query.order_by("hostDesc").all():
   HOST_CHOICES.append((row.hostID, row.hostDesc))
INITIATIVE_CHOICES = []
for row in Initiativelist.query.order_by("initiativeDesc").all():
    INITIATIVE_CHOICES.append((row.initiativeID, row.initiativeDesc))
M_CHOICES = []
for row in Month.query.order_by("monthID").all():
    M_CHOICES.append((row.monthID, row.monthDesc))
MATURITY_CHOICES = []
for row in Maturitylist.query.order_by("maturityID").all():
    MATURITY_CHOICES.append((row.maturityID, row.maturityDesc))
PROJECT_CHOICES = []
for row in Progresslist.query.order_by("progressID").all():
    PROJECT_CHOICES.append((row.progressID, row.progressDesc))
PROJ_VISIBILITY_CHOICES = []
for row in Proj_visibilitylist.query.order_by("proj_visibilityID").all():
    PROJ_VISIBILITY_CHOICES.append((row.proj_visibilityID, row.proj_visibilityDesc))
Q_CHOICES = []
for row in Quarter.query.order_by("quarterID").all():
    Q_CHOICES.append((row.quarterID, row.quarterDesc))
RISK_CHOICES = []
for row in Risklevellist.query.order_by("risklevelID").all():
    RISK_CHOICES.append((row.risklevelID, row.risklevelDesc))
SCOPE_CHOICES = []
for row in Scopelist.query.order_by("scopeID").all():
    SCOPE_CHOICES.append((row.scopeID, row.scopeDesc))
SPONSOR_CHOICES = []
for row in Sponsorlist.query.order_by("sponsorDesc").all():
    SPONSOR_CHOICES.append((row.sponsorID, row.sponsorDesc))
TECHNOLOGY_CHOICES = []
for row in Technologylist.query.order_by("technologyDesc").all():
    TECHNOLOGY_CHOICES.append((row.technologyID, row.technologyDesc))
TYPE_CHOICES = []
for row in Typelist.query.order_by("typeDesc").all():
    TYPE_CHOICES.append((row.typeID, row.typeDesc))
VISIBILITY_CHOICES = []
for row in Visibilitylist.query.order_by("visibilityID").all():
    VISIBILITY_CHOICES.append((row.visibilityID, row.visibilityDesc))
Y_CHOICES = []
for row in Calendaryear.query.order_by("calendaryearID").all():
    Y_CHOICES.append((row.calendaryearID, row.calendaryearDesc))

class Stakeholderlist(Base):
    __tablename__ = "stakeholderlist"

    stakeholderID = Column(Integer, primary_key=True, server_default=text("'0'"))
    stakeholderDesc = Column(String(100), nullable=False, server_default=text("''"))
    stakeholderText = Column(Text, nullable=False)

t_stakeholder = Table(
    "stakeholder", metadata,
    Column("projectID", SmallInteger, ForeignKey("description.projectID"),nullable=False, index=True, server_default=text("'0'")),
    Column("stakeholderID", Integer, ForeignKey("stakeholderlist.stakeholderID"),nullable=False, index=True, server_default=text("'0'"))
)

class Driverlist(Base):
    __tablename__ = "driverlist"

    driverID = Column(Integer, primary_key=True, server_default=text("'0'"))
    driverDesc = Column(String(100), nullable=False, server_default=text("''"))
    driverText = Column(Text, nullable=False)

t_driver = Table(
    "driver", metadata,
    Column("projectID", Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'")),
    Column("driverID", Integer, ForeignKey("driverlist.driverID"),nullable=False, index=True, server_default=text("'0'"))
)

t_child = Table(
    "child", metadata,
    Column("projectID", Integer, ForeignKey("description.projectID"), primary_key=True),
    Column("childID", Integer, ForeignKey("description.projectID"), primary_key=True)
)

class Description(Base):
    __tablename__ = "description"
        
    projectID = Column(SmallInteger, primary_key=True, server_default=text("'0'"))
    name = Column(String(100), nullable=True, index=True, server_default=text("''"))
    description = Column(Text, nullable=True, index=True)
    rationale = Column(Text, nullable=True, index=True, server_default=text("''"))
    businesscase = Column(Text, nullable=True, index=True, server_default=text("''"))
    dependencies = Column(Text, nullable=True, index=True, server_default=text("''"))
    maturityID = Column(Integer, ForeignKey(Maturitylist.maturityID), 
                        info={"choices": MATURITY_CHOICES},
                        nullable=True, index=True, server_default=text("'0'"))
    proposer = Column(String(100), nullable=True, server_default=text("''"))
    customer = Column(String(100), nullable=True, server_default=text("''"))
    sponsorID = Column(Integer, ForeignKey(Sponsorlist.sponsorID), 
                       info={"choices": SPONSOR_CHOICES},
                       nullable=True, index=True, server_default=text("'0'"))
    hostID = Column(Integer, ForeignKey(Hostlist.hostID), 
                    info={"choices": HOST_CHOICES}, 
                    nullable=True, index=True, server_default=text("'0'"))
    technologyID = Column(Integer, ForeignKey(Technologylist.technologyID), 
                          info={"choices": TECHNOLOGY_CHOICES}, 
                          nullable=True, server_default=text("'0'"))
    typeID = Column(Integer, ForeignKey(Typelist.typeID), 
                    info={"choices": TYPE_CHOICES}, 
                    nullable=True, server_default=text("'0'"))
    fundingsourceID = Column(Integer, ForeignKey(Fundingsourcelist.fundingsourceID), 
                             info={"choices": FUNDINGSOURCE_CHOICES},
                             nullable=True, server_default=text("'0'"))
    created = Column(Date, nullable=True, server_default=text("'0000-00-00'"))
    ended = Column(Date, nullable=True, server_default=text("'0000-00-00'"))
    finalID = Column(Integer, ForeignKey(Finallist.finalID), 
                     info={"choices": FINAL_CHOICES}, 
                     nullable=True, index=True, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))
    
    childID = db.relationship("Description", 
                               secondary=t_child,
                               primaryjoin=projectID==t_child.c.projectID,
                               secondaryjoin=projectID==t_child.c.childID,
                               order_by=projectID,
                               backref="children")
    driverID = db.relationship("Driverlist", secondary=t_driver)
    stakeholderID = db.relationship("Stakeholderlist", secondary=t_stakeholder)
        
class Comment(Base):
    __tablename__ = "comment"

    commentID = Column(Integer, primary_key=True, nullable=True)
    projectID = Column(Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'"))
    commentAuthor = Column(String(100), nullable=True, index=True, server_default=text("''"))
    commentAuthored = Column(DateTime, nullable=True, index=True, server_default=text("'0000-00-00 00:00:00'"))
    commentEditor = Column(String(100), nullable=True, index=True, server_default=text("''"))
    commentEdited = Column(DateTime, nullable=True, index=True, server_default=text("'0000-00-00 00:00:00'"))
    comment = Column(Text, nullable=True)

    description = db.relationship("Description", backref="comments")

class Disposition(Base):
    __tablename__ = "newdisposition"

    disposeID = Column(SmallInteger)
    projectID = Column(SmallInteger, ForeignKey("description.projectID"), primary_key=True, nullable=False, index=True, server_default=text("'0'"))
    dispositionID = Column(Integer, ForeignKey(Dispositionlist.dispositionID),
                           info={"choices": DISPOSITION_CHOICES},
                           nullable=False, index=True, server_default=text("'0'"))
    explanation = Column(Text, nullable=True, index=True)
    disposedInFY = Column(SmallInteger, ForeignKey("fiscalyears.fiscalyearID"), primary_key=True,
                          info={"choices": FY_CHOICES},
                          nullable=False, index=True, server_default=text("'0'"))
    disposedInQ = Column(Integer, ForeignKey("quarters.quarterID"), primary_key=True,
                         info={"choices": Q_CHOICES},
                         nullable=False, index=True, server_default=text("'0'"))
    reconsiderInFY = Column(SmallInteger, ForeignKey("fiscalyears.fiscalyearID"),
                            info={"choices": FY_CHOICES},
                            nullable=True, server_default=text("'0'"))
    reconsiderInQ = Column(Integer, ForeignKey("quarters.quarterID"),
                           info={"choices": Q_CHOICES},
                           nullable=True, server_default=text("'0'"))
    startInY = Column(SmallInteger, ForeignKey("calendaryears.calendaryearID"),
                      info={"choices": Y_CHOICES},
                      nullable=True, server_default=text("'0'"))
    startInM = Column(Integer, ForeignKey("months.monthID"),
                      info={"choices": M_CHOICES},
                      nullable=True, server_default=text("'0'"))
    finishInY = Column(SmallInteger, ForeignKey("calendaryears.calendaryearID"),
                       info={"choices": Y_CHOICES},
                       nullable=True, server_default=text("'0'"))
    finishInM = Column(Integer, ForeignKey("months.monthID"),
                       info={"choices": M_CHOICES},
                       nullable=True, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))

    description = db.relationship("Description", backref="dispositions")


class History(Base):
    __tablename__ = "history"

    historyID = Column(Integer, primary_key=True)
    projectID = Column(Integer, ForeignKey("description.projectID"), nullable=False, index=True, server_default=text("'0'"))
    attributeName = Column(String(100), nullable=False, server_default=text("''"))
    oldValue = Column(Integer, nullable=False, server_default=text("'0'"))
    newValue = Column(Integer, nullable=False, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))


t_strategy = Table(
    "strategy", metadata,
    Column("projectID", Integer, ForeignKey("portfolio.projectID"),
           nullable=False, index=True, server_default=text("'0'")),
    Column("strategyID", Integer, ForeignKey("strategylist.strategyID"),
           nullable=False, index=True, server_default=text("'0'"))
)

class Portfolio(Base):
    __tablename__ = "portfolio"

    projectID = Column(SmallInteger, ForeignKey("description.projectID"), primary_key=True)
    latest_disposeID = Column(SmallInteger, nullable=False, server_default=text("'0'"))
    flavorID = Column(Integer, ForeignKey("flavorlist.flavorID"),
                      info={"choices": FLAVOR_CHOICES},
                      nullable=True, index=True, server_default=text("'0'"))
    initiativeID = Column(Integer, ForeignKey("initiativelist.initiativeID"),
                          info={"choices": INITIATIVE_CHOICES},
                          nullable=True, index=True, server_default=text("'0'"))
    scopeID = Column(Integer, ForeignKey("scopelist.scopeID"),
                     info={"choices": SCOPE_CHOICES},
                     nullable=True, index=True, server_default=text("'0'"))
    visibilityID = Column(Integer, ForeignKey("visibilitylist.visibilityID"),
                          info={"choices": VISIBILITY_CHOICES},
                          nullable=True, index=True, server_default=text("'0'"))
    complexityID = Column(Integer, ForeignKey("complexitylist.complexityID"),
                          info={"choices": COMPLEXITY_CHOICES},
                          nullable=True, index=True, server_default=text("'0'"))
    risklevelID = Column(Integer, ForeignKey("risklevellist.risklevelID"),
                         info={"choices": RISK_CHOICES},
                         nullable=True, index=True, server_default=text("'0'"))
    costlevelID = Column(Integer, ForeignKey("costlevellist.costlevelID"),
                         info={"choices": COST_CHOICES},
                         nullable=True, index=True, server_default=text("'0'"))
    rpu = Column(Float, nullable=True, server_default=text("'0'"))
    budgetInFY = Column(SmallInteger, ForeignKey("fiscalyears.fiscalyearID"), 
                        info={"choices": FY_CHOICES},
                        nullable=True, index=True, server_default=text("'0'"))
    budgetInQ = Column(Integer, ForeignKey("quarters.quarterID"),
                       info={"choices": Q_CHOICES},
                       nullable=True, index=True, server_default=text("'0'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))

    strategyID = db.relationship("Strategylist", secondary=t_strategy)
    description = db.relationship("Description", backref="portfolio")

class Project(Base):
    __tablename__ = "project"

    projectID = Column(SmallInteger, ForeignKey("description.projectID"), primary_key=True, server_default=text("'0'"))
    proj_manager = Column(String(100), nullable=True, index=True, server_default=text("''"))
    tech_manager = Column(String(100), nullable=True, index=True, server_default=text("''"))
    proj_visibilityID = Column(Integer, ForeignKey("proj_visibilitylist.proj_visibilityID"),
                               info={"choices": PROJ_VISIBILITY_CHOICES},
                               nullable=True, index=True, server_default=text("'0'"))
    project_url = Column(String(255), nullable=True, server_default=text("''"))
    progressID = Column(Integer, ForeignKey("progresslist.progressID"),
                        info={"choices": PROJECT_CHOICES},
                        nullable=True, index=True, server_default=text("'0'"))
    startedOn = Column(Date, nullable=True, index=True, server_default=text("'0000-00-00'"))
    finishedOn = Column(Date, nullable=True, index=True, server_default=text("'0000-00-00'"))
    lastModified = Column(DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"))
    lastModifiedBy = Column(String(100), nullable=False, server_default=text("''"))
    
    description = db.relationship("Description", backref="project")

