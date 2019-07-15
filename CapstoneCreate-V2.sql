CREATE TABLE EMPLOYEE
(EmpID Char(40) NOT NULL,
EMPLastName Char(50) NOT NULL,
EMPFirstName Char(50) NOT NULL,
EMPMiddleInitial Char(1) NULL,
EMPHireDate DATE NOT NULL,
EMPPhone CHAR(12) NULL,
EMPAddress CHAR(255) NULL,
/*The following can be 'Y' for Yes or 'N' for No ONLY*/
EMP_Staff Char(1) NOT NULL DEFAULT 'N',
EMPAdmin Char(1) NOT NULL DEFAULT  'N',
EMPProf Char(1) NOT NULL DEFAULT 'N',
CONSTRAINT EMPLOYEE_PK Primary Key(EmpID)
)
;

CREATE TABLE STAFF
(EmpID Char(40) NOT NULL ,
/*Levels ranging from 1 to 10 (Level I, Level II, etc., based on seniority, competence, rank, etc.*/
StaffLevel int NOT NULL ,
CONSTRAINT STAFF_PK Primary Key(EmpID),
CONSTRAINT STAFF_FK Foreign Key(EmpID)
   REFERENCES EMPLOYEE(EmpID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
)
;

CREATE TABLE ADMIN
(EmpID Char(40) NOT NULL ,
AdminPosition CHAR(70) NOT NULL ,
CONSTRAINT ADMIN_PK Primary Key(EmpID),
CONSTRAINT ADMIN_FK Foreign Key(EmpID)
   REFERENCES EMPLOYEE(EmpID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
)
;

CREATE TABLE SCHOOL
(SchoolCode Char(40) NOT NULL ,
SchoolName Char(100) NOT NULL ,
EmpID Char(40) NULL, -- ALLOW TO BE NULL JUST IN CASE SCHOOL IS WITHOUT DEAN
CONSTRAINT SCHOOL_PK Primary Key(SchoolCode),
CONSTRAINT SCHOOL_FK Foreign Key(EmpID)
   REFERENCES EMPLOYEE(EmpID)  
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
)
;

CREATE TABLE DEPARTMENT
(DeptCode Char(40) NOT NULL ,
DeptName Char(100) NOT NULL ,
SchoolCode Char(40) NOT NULL ,
EmpID Char(40)  NULL , -- ALLOW TO BE NULL TO ALLOW ROW TO BE ADDED OR IF DEPT IS WITHOUT CHAIR
CONSTRAINT DEPARTMENT_PK Primary Key(DeptCode),
CONSTRAINT DEPARTMENT_SCHOOL_FK Foreign Key(SchoolCode)
   REFERENCES SCHOOL(SchoolCode)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
CONSTRAINT DEPARTMENT_PROFESSOR_FK Foreign Key(EmpID)
   REFERENCES EMPLOYEE(EmpID) 
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
)
;





CREATE TABLE PROFESSOR
(EmpID Char(40) NOT NULL ,
ProfSpecialty Char(70) NULL ,
ProfRank int NOT NULL ,
ProfDegree CHAR(70) NOT NULL ,
DeptCode Char(40) NOT NULL ,
CONSTRAINT PROFESSOR_PK Primary Key(EmpID),
CONSTRAINT PROFESSOR_EMPLOYEE_FK Foreign Key(EmpID)
   REFERENCES EMPLOYEE(EmpID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
CONSTRAINT PROFESSOR_DEPARTMENT_FK Foreign Key(DeptCode)
   REFERENCES DEPARTMENT(DeptCode)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
)
;

CREATE TABLE COURSE
(CRSCode Char(40) NOT NULL ,
CRSTitle Char(100) NOT NULL ,
CRSDescription Char(255) NOT NULL ,
CRSCredits Char(2) NOT NULL ,
DeptCode Char(40) NOT NULL ,
CONSTRAINT COURSE_PK PRIMARY KEY(CRSCode),
CONSTRAINT COURSE_FK FOREIGN KEY(DeptCode)
   REFERENCES DEPARTMENT(DeptCode)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
)
;

CREATE TABLE BUILDING
(BuildingCode Char(40) NOT NULL ,
BuildingName Char(55) NOT NULL ,
BuildingLocation Char(40) NOT NULL ,
CONSTRAINT BUILDING_PK Primary Key(BuildingCode)
)
;

CREATE TABLE ROOM
(RoomCode Char(40) NOT NULL ,
RoomType Char(40) NOT NULL ,
BuildingCode Char(40) NOT NULL ,
CONSTRAINT ROOM_PK Primary Key(RoomCode),
CONSTRAINT ROOM_FK FOREIGN KEY (BuildingCode)
   REFERENCES BUILDING(BuildingCode)
)
;

CREATE TABLE CLASS
(ClassCode CHAR(40) NOT NULL ,
ClassSection CHAR(40) NULL ,
ClassTime CHAR(7) NULL ,
EmpID Char(40) NULL ,
CRSCode Char(40) NULL ,
RoomCode Char(40) NULL ,
CONSTRAINT CLASS_PK PRIMARY KEY (ClassCode),
CONSTRAINT CLASS_PROFESSOR_FK FOREIGN KEY (EmpID)
   REFERENCES PROFESSOR(EmpID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
CONSTRAINT CLASS_COURSE_FK FOREIGN KEY (CRSCode)
   REFERENCES COURSE(CRSCode)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
CONSTRAINT CLASS_ROOM_FK FOREIGN KEY (RoomCode)
   REFERENCES ROOM(RoomCode)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
)
;

CREATE TABLE STUDENT
(StuNum Char(30) NOT NULL ,
StuLastName CHAR(40) NOT NULL ,
StuFirstName CHAR(40) NOT NULL ,
StuInitial CHAR(1) null ,
StuEmail CHAR(75) NOT NULL ,
StuPhone CHAR(15) NULL ,
EmpID Char(40) NOT NULL ,
DeptCode Char(40) NULL ,
CONSTRAINT STUDENT_PK PRIMARY KEY (StuNum),
CONSTRAINT STUDENT_STAFF_FK FOREIGN KEY (EmpID)
   REFERENCES STAFF(EmpID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
CONSTRAINT STUDENT_DEPARTMENT_FK FOREIGN KEY (DeptCode)
   REFERENCES DEPARTMENT(DeptCode)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
)
;

CREATE TABLE ENROLL
(StuNum Char(30) NOT NULL ,
ClassCode CHAR(40) NOT NULL ,
EnrollDate DATE NOT NULL ,
EnrollGrade DECIMAL(2,0) NOT NULL ,


CONSTRAINT ENROLL_STUDENT_PK PRIMARY KEY (StuNum, ClassCode),
CONSTRAINT ENROLL_STUDENT_FK FOREIGN KEY (StuNum)
   REFERENCES STUDENT(StuNum)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION ,
CONSTRAINT ENROLL_CLASS_FK FOREIGN KEY (ClassCode)
   REFERENCES CLASS(ClassCode)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
)
;


