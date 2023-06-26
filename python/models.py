from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.orm import relationship

db = SQLAlchemy()
class PUser(db.Model):
    __tablename__ = 'puser'
    uname = db.Column(db.String(80), nullable=False)
    udob  = db.Column(db.String(30),nullable=False)
    ugender = db.Column(db.String(30),nullable=False)
    uemail = db.Column(db.String(50),primary_key=True)
    udoorno = db.Column(db.Integer,nullable=False)
    ucity  = db.Column(db.String(30),nullable=False)
    ucountry = db.Column(db.String(30),nullable=False)
    uzipcode   = db.Column(db.Integer,nullable=False)
    uphone = db.Column(db.String(30),nullable=False,unique=True)
    uoccupation = db.Column(db.String(30),nullable=False)
    uemergencyname  = db.Column(db.String(30),nullable=False)
    uemergencynumber = db.Column(db.String(30),nullable=False)
    educationlevel  = db.Column(db.String(40),nullable= False)
    maritalstatus = db.Column(db.String(30),nullable=False)
    upassword=db.Column(db.String(30),nullable=False)
    profile_pic = db.Column(db.String(255))
class HUser(db.Model):
    __tablename__ = 'huser'
    uemail = db.Column(db.String(50),nullable=False,primary_key=True)
    uheight = db.Column(db.Integer,nullable = False)
    uweight = db.Column(db.Integer,nullable=False)
    usurgery = db.Column(db.String(50),nullable=False)
    uallergy = db.Column(db.String(50),nullable=False)
    uchronic = db.Column(db.String(50),nullable=False)
    ualcohol = db.column(db.String(50))
    udrugs   = db.Column(db.String(50),nullable=False)
    utobacco = db.Column(db.String(50),nullable=False)
class Appointments(db.Model):
    __tablename__ = 'appointments'
    
    app_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    pat_name = db.Column(db.String(50), nullable=False)
    pat_mail = db.Column(db.String(50), nullable=False)
    doc_name = db.Column(db.String(50), nullable=False)
    doc_domain = db.Column(db.String(50), nullable=False)
    app_date = db.Column(db.String(50), nullable=False)
    status = db.Column(db.String(50), nullable=False, default='submitted')
    time = db.Column(db.String(50))
    mail = db.Column(db.String(50))
class DUser1(db.Model):
    __tablename__='duser1'
    dname=db.Column(db.String(50),nullable=False)
    demail=db.Column(db.String(50),nullable=False,primary_key=True)
    dphno=db.Column(db.Integer,nullable=False)
    dgender = db.Column(db.String(30),nullable=False)
    ddoorno = db.Column(db.Integer,nullable=False)
    dcity  = db.Column(db.String(30),nullable=False)
    dcountry = db.Column(db.String(30),nullable=False)
    dzipcode   = db.Column(db.Integer,nullable=False)
    ddob  = db.Column(db.String(30),nullable=False)
    dpassword=db.Column(db.String(30),nullable=False)
    dspeciality=db.Column(db.String(30),nullable=False)

class DUser2(db.Model):
    __tablename__='duser2'
    demail = db.Column(db.String(50), nullable=False, primary_key=True)
    dheight = db.Column(db.Integer,nullable = False)
    dweight = db.Column(db.Integer,nullable = False)
    dedulevel=db.Column(db.String(50),nullable=False)
    dlicensenumber=db.Column(db.Integer,nullable=False,)
    dexperience=db.Column(db.Integer,nullable=False)
    dpreinstitution=db.Column(db.String(50),nullable=False)

class Feedback(db.Model):
    __tablename__ = 'feedback'
    uid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    umail = db.Column(db.String(50),nullable=False)
    uoption = db.Column(db.String(50),nullable=False)
    ucontent = db.Column(db.String(200),nullable=False)

class Docfb(db.Model):
    __tablename__ = 'docfb'
    did = db.Column(db.Integer,primary_key=True,autoincrement=True)
    uid = db.Column(db.Integer,db.ForeignKey('feedback.uid',ondelete='CASCADE'))
    feedback = relationship('Feedback', backref='parent', cascade='all, delete')
    domname = db.Column(db.String(40))
    docname = db.Column(db.String(30))

class Doctor(db.Model):
    __tablename__ = 'Doctor'
    dname = db.Column(db.String(30),nullable=False)
    ddomain = db.Column(db.String(40),nullable=False)
    dlocation = db.Column(db.String(40),nullable=False)
    demail = db.Column(db.String(40),primary_key=True)
    dphone = db.Column(db.Integer,nullable=False)