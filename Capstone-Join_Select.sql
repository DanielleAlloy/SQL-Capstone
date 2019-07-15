/** Shows all the rows from the EMPLOYEE table **/
SELECT *
FROM EMPLOYEE;

/** Shows the EMPID, EMPFirstName, EMPLastName from the EMPLOYEE table, sorted by HireDate **/
SELECT EmpID, EMPFirstName, EMPLastName
FROM EMPLOYEE
ORDER BY EMPHireDate;

/** Counts the number of EMPLOYEEs who are professors, and displays the count column as NumberProfessors **/
SELECT Count(EmpID) AS NumberProfessors
FROM EMPLOYEE
WHERE EMPProf = 'Y';

/** Shows all the rows in the SCHOOL Table **/
select *
from SCHOOL;

/* Sho all the rows from the DEPARTMENT table */
select *
FROM DEPARTMENT;

/* Show the DEPARTMENTs that do not have a chair */
SELECT *
from DEPARTMENT
where  EmpID IS NULL;

/* Show the Dean of Every School */
SELECT SchoolName, EMPFirstName, EMPLastName
FROM EMPLOYEE, SCHOOL
WHERE SCHOOL.EmpID = EMPLOYEE.EmpID;

/* Show Employees name & EMPID for employees hired after 1-1-2000 */
SELECT EMPHireDate, EMPFirstName, EMPLastName, EmpID
FROM EMPLOYEE
WHERE EMPHireDate >= '01-01-2000'
ORDER BY EMPHireDate;

/* Shows the Advisor's assigned to each students' last name; ordered by advisor EMPID */
SELECT StuFirstName, StuLastName, EMPLastName AS AdvisorLastName
FROM EMPLOYEE, STUDENT
where STUDENT.EmpID = EMPLOYEE.EmpID
ORDER BY EMPLOYEE.EmpID;

/** Show the Room, BuildingName, and CRSTitle for Each Class **/
SELECT ROOM.RoomCode, BUILDING.BuildingName, COURSE.CRSTitle
FROM  ROOM, BUILDING, COURSE, CLASS
WHERE ROOM.BuildingCode = BUILDING.BuildingCode
AND CLASS.RoomCode = ROOM.RoomCode
AND COURSE.CRSCode = CLASS.CRSCode
GROUP BY ROOM.RoomCode, BuildingName, CRSTitle;

/***Show the name of students enrolled in a certain course **/
SELECT STUDENT.StuFirstName, STUDENT.StuLastName, COURSE.CRSTitle
FROM STUDENT, ENROLL, COURSE, CLASS
Where ENROLL.ClassCode = CLASS.ClassCode
AND STUDENT.StuNum = ENROLL.StuNum
AND COURSE.CRSCode = CLASS.CRSCode
GROUP BY StuFirstName, StuLastName,CRSTitle;

/** Shows the employee that is the chair of department **/
SELECT EMPFirstName, EMPLastName, DeptName AS ChairsDepartment
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.EmpID = DEPARTMENT.EmpID;

/** Show the department that the student is enrolled in**/
SELECT StuNum, STUDENT.StuFirstName, STUDENT.StuLastName, DeptName AS Major
FROM DEPARTMENT, STUDENT
WHERE STUDENT.DeptCode = DEPARTMENT.DeptCode
ORDER BY DeptName;

/** Show the Number of Professors in each Department **/
SELECT count(PROFESSOR.EmpID) As NumberOfProfessorsInDepartment, DEPARTMENT.DeptName
FROM DEPARTMENT, PROFESSOR
WHERE DEPARTMENT.DeptCode = PROFESSOR.DeptCode
GROUP BY DeptName
ORDER BY DeptName;

/** Show the degrees held by the professors in each department **/
SELECT ProfDegree, DEPARTMENT.DeptName
FROM (PROFESSOR
JOIN DEPARTMENT ON PROFESSOR.DeptCode = DEPARTMENT.DeptCode)
GROUP BY ProfDegree, DeptName;

/** Shows the type of ROOMs in each BUILDING */
SELECT BuildingName, RoomType, count(RoomType) AS NumOfRoomType, BuildingLocation
FROM ROOM, BUILDING
WHERE ROOM.BuildingCode = BUILDING.BuildingCode
GROUP BY BuildingName, RoomType, BuildingLocation
ORDER BY BuildingName;

/** Number of credit each student is enrolled in **/
SELECT StuFirstName, StuLastName, SUM(CAST(CRSCredits AS INT))
FROM STUDENT, COURSE, ENROLL, CLASS
WHERE STUDENT.StuNum = ENROLL.StuNum
AND ENROLL.ClassCode = CLASS.ClassCode
AND CLASS.CRSCode = COURSE.CRSCode
GROUP BY StuFirstName, StuLastName;
