/*********Capstone Deliverable III Insert Statements**********/

/******** Insert rows into EMPLOYEE table *************/

INSERT INTO EMPLOYEE
VALUES
('12345678','Smith','John', 'F', '2017-07-15', '6314202018','123 Main Street, Farmingdale NY', 'Y', 'N', 'N');

INSERT INTO EMPLOYEE
VALUES
('12365788','Jones','Melissa', 'K', '2003-01-23', '6314202017','18 Merrick Road, Merrick NY', 'N', 'Y', 'Y');

INSERT INTO EMPLOYEE
VALUES
('15875976', 'King','Michael', 'J', '2001-06-26', '6314202001','24 Hempstead Turnpike, Mineola NY', 'N', 'Y', 'Y');

INSERT INTO EMPLOYEE
VALUES
('74625857','Alloy','Joan', 'T', '2010-04-01', '6314202022','75 Sunrise Highway, Ronkonkoma NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('36486485','Brown','Charlie', NULL, '2005-07-19', '6314202024','738 Sunrise Highway, Patchogue NY', 'N', 'Y', 'N');

INSERT INTO EMPLOYEE
VALUES
('74290153','Hulk','Hogan', NULL, '2009-08-10', '6314202019','25 Fifth Street, Bay Shore NY', 'N', 'Y', 'N');

INSERT INTO EMPLOYEE
VALUES
('93467365','Abraham','Lincoln', NULL, '2010-09-10', '6314202120','758 3rd Street, Farmingdale NY', 'N', 'Y', 'Y');

INSERT INTO EMPLOYEE
VALUES
('83520563','Oprah','Winfrey', 'T', '2016-11-20', '6314202100','756 Second Street, Farmingdale NY', 'N', 'Y', 'Y');

INSERT INTO EMPLOYEE
VALUES
('75390413','Elvis','Presley', NULL, '1998-12-25', '6314202165','1000 Heartbreak Street, Amityville NY', 'N', 'Y', 'N');

INSERT INTO EMPLOYEE
VALUES
('94385621','Smith','Ellen', 'Y', '2006-11-20', '6314202173','98 Straight Path, Babylon NY', 'N', 'Y', 'N');

INSERT INTO EMPLOYEE
VALUES
('83529475','Squarepants','Bob', 'S', '1990-05-01', '6314202077','724-23 Bread and Cheese Road, Northport NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('73925104','Skeleton','Jack', NULL, '2016-01-02', '6314202203','10 Main Street, Kings Park NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('65482600','Funny','Doug', 'J', '2012-10-24', '6314202654','19 Nick Lane, Patchogue NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('92648256','Pickles','Tommy', 'S', '2012-10-20', '6314202764','90 15th Avenue, Islip NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('19857354','Squid','Danielle', NULL, '1985-11-20', '6314202020','184 20th Street, West Babylon NY', 'N', 'N', 'Y');

INSERT INTO EMPLOYEE
VALUES
('7392674','Stark','Tony', NULL, '2001-11-15', '6314202076','935 14th Avenue, New York, NY', 'Y', 'N', 'N');

INSERT INTO EMPLOYEE
VALUES
('1738495','Banner','Bruce', NULL, '2010-02-15', '6314202750','20 Hulk Way, Hicksville NY', 'Y', 'N', 'N');

INSERT INTO EMPLOYEE
VALUES
('9263748','Rodgers','Steve', NULL, '1975-07-04', '63142021818','1010 America Drive, West Babylon NY', 'Y', 'N', 'N');

/******** Insert rows into STAFF table *************/

INSERT INTO STAFF
VALUES
('12345678', 1);

INSERT INTO STAFF
VALUES
('7392674', 2);

INSERT INTO STAFF
VALUES
('1738495', 5);

INSERT INTO STAFF
VALUES
('9263748', 8);


/******** Insert rows into ADMIN table *************/

INSERT INTO ADMIN
VALUES
('12365788', 'Dean of Business School');

INSERT INTO ADMIN
VALUES
('15875976', 'Chair of CPIS Department');

INSERT INTO ADMIN
VALUES
('36486485', 'Dean of Health Sciences School');

INSERT INTO ADMIN
VALUES
('74290153', 'Dean of Engineering School');

INSERT INTO ADMIN
VALUES
('93467365', 'Chair of Electrical Engineering Department');

INSERT INTO ADMIN
VALUES
('83520563', 'Chair of Art Department');

INSERT INTO ADMIN
VALUES
('75390413', 'Dean of Law School');

INSERT INTO ADMIN
VALUES
('94385621', 'Chair of Nursing Department');


/******** Insert rows into SCHOOL table *************/

INSERT INTO SCHOOL
VALUES
('12345', 'Business', '12365788');

INSERT INTO SCHOOL
VALUES
('12344', 'Art', '83520563');

INSERT INTO SCHOOL
VALUES
('12340', 'Sciences', NULL);

INSERT INTO SCHOOL
VALUES
('12330', 'Health Sciences', '36486485');

INSERT INTO SCHOOL
VALUES
('12320', 'Engineering', '74290153');

INSERT INTO SCHOOL
VALUES
('12310', 'Architecture & Planning', NULL);

INSERT INTO SCHOOL
VALUES
('12216', 'Law', '75390413');

INSERT INTO SCHOOL
VALUES
('12315', 'Social Work', NULL);

/******** Insert rows into DEPARTMENT table *************/

INSERT INTO DEPARTMENT
VALUES
('123456', 'Computer Programming & Information Systems', '12345', '15875976');

INSERT INTO DEPARTMENT
VALUES
('123455', 'Management', '12345', NULL);

INSERT INTO DEPARTMENT
VALUES
('236065', 'Fine Art', '12344', NULL);

INSERT INTO DEPARTMENT
VALUES
('865035', 'Chemistry', '12340', NULL);

INSERT INTO DEPARTMENT
VALUES
('754932', 'Nursing', '12330', '94385621');

INSERT INTO DEPARTMENT
VALUES
('927483', 'Electrical Engineering', '12320', '93467365');

INSERT INTO DEPARTMENT
VALUES
('8562503', 'Urban Planning & Development', '12310', NULL);

INSERT INTO DEPARTMENT
VALUES
('765831', 'Criminal Law', '12216', NULL);

INSERT INTO DEPARTMENT
VALUES
('963824', 'Social Welfare', '12315', NULL);

/******** Insert rows into PROFESSOR table *************/

INSERT INTO PROFESSOR
VALUES
('12365788', 'Business Management', 10, 'MBA', '123455');

INSERT INTO PROFESSOR
VALUES
('15875976', 'Networking & Programming', 10, 'PHD', '123456');

INSERT INTO PROFESSOR
VALUES
('74625857', 'C++ Programming', 5, 'BS', '123456');

INSERT INTO PROFESSOR
VALUES
('93467365', 'Electrical Engineering', 9, 'MBA', '927483');

INSERT INTO PROFESSOR
VALUES
('83520563', 'Sculpture', 6, 'MFA', '236065');

INSERT INTO PROFESSOR
VALUES
('83529475', 'Nursing Ethics', 6, 'BSN', '754932');

INSERT INTO PROFESSOR
VALUES
('73925104', 'Inorganic Chemistry', 7, 'MS', '865035');

INSERT INTO PROFESSOR
VALUES
('65482600', 'Business Ethics', 6, 'MBA', '123455');

INSERT INTO PROFESSOR
VALUES
('92648256', 'Urban Planning', 4, 'BS', '8562503');

INSERT INTO PROFESSOR
VALUES
('19857354', 'Criminal Law', 9, 'JD', '765831');

/******** Insert rows into COURSE table *************/

INSERT INTO COURSE
VALUES
('674396', 'C++ Programming', 'Learn the basics of computer programming with C++', '3', '123456');

INSERT INTO COURSE
VALUES
('893685', 'JAVA Programming', 'A mid level programming class, for those in the programming track', '3', '123456');

INSERT INTO COURSE
VALUES
('735285', 'Intro to Sculpture', 'An introductory sculpture class.', '3', '236065');

INSERT INTO COURSE
VALUES
('426857', 'Mixed Media', 'An introductory mixed media class.', '3', '236065');

INSERT INTO COURSE
VALUES
('753953', 'Intro Engineering', 'An introductory engineering class.', '3', '927483');

INSERT INTO COURSE
VALUES
('943624', 'Electrical Engineering 101', 'Learn the basics of electrical engineering', '3', '927483');

INSERT INTO COURSE
VALUES
('953624', 'Medical Ethics 101', 'The ins and out of medical ethics', '3', '754932');

INSERT INTO COURSE
VALUES
('162437', 'The Ethics of Business', 'What is ethics in business? Find out in this class', '3', '123455');

INSERT INTO COURSE
VALUES
('925483', 'Inorganic Chemistry I', 'Find out the difference between organic and inorganic chemistry.', '3', '865035');

/******** Insert rows into BUILDING table *************/

INSERT INTO BUILDING
VALUES
('1234', 'Whitman Hall', '523 Campus Way');

INSERT INTO BUILDING
VALUES
('1235', 'Johnson Hall', '1000 Campus Way');

INSERT INTO BUILDING
VALUES
('6458', 'Art Building', '85 Campus Way');

INSERT INTO BUILDING
VALUES
('9527', 'Engineering Building', '2002 Campus Way');

INSERT INTO BUILDING
VALUES
('1945', 'Nursing Building', '19 Campus Way');

INSERT INTO BUILDING
VALUES
('9523', 'Business Building', '352 Campus Way');

INSERT INTO BUILDING
VALUES
('5482', 'Chemistry Building', '200 Campus Way');

/******** Insert rows into ROOM table *************/

INSERT INTO ROOM
VALUES
('124', 'Classroom', '1234');

INSERT INTO ROOM
VALUES
('210', 'Classroom', '1234');

INSERT INTO ROOM
VALUES
('126', 'Dorm', '1235');

INSERT INTO ROOM
VALUES
('218', 'Dorm', '1235');

INSERT INTO ROOM
VALUES
('216', 'Dorm', '1235');

INSERT INTO ROOM
VALUES
('100', 'Dorm', '1235');

INSERT INTO ROOM
VALUES
('105', 'Classroom', '6458');

INSERT INTO ROOM
VALUES
('219', 'Classroom', '9527');

INSERT INTO ROOM
VALUES
('310', 'Classroom', '9523');

INSERT INTO ROOM
VALUES
('115', 'Classroom', '1945');

INSERT INTO ROOM
VALUES
('122', 'Classroom', '5482');

/******** Insert rows into CLASS table *************/

INSERT INTO CLASS
VALUES
('69465', 'PM1', '1900', '74625857','674396','124');

INSERT INTO CLASS
VALUES
('753954', 'EB1', '0925', '74625857','893685','210');

INSERT INTO CLASS
VALUES
('757569', 'SU1', '0925', '83520563','735285','105');

INSERT INTO CLASS
VALUES
('856352', 'MM01', '1145', '83520563','735285','105');

INSERT INTO CLASS
VALUES
('753953', 'EN01', '800', '93467365','753953','105');

INSERT INTO CLASS
VALUES
('943624', 'EE01', '1200', '93467365','943624','219');

INSERT INTO CLASS
VALUES
('954721', 'ME01', '1725', '83529475','953624','115');

INSERT INTO CLASS
VALUES
('946253', 'BE01', '1200', '65482600','162437','310');

INSERT INTO CLASS
VALUES
('916374', 'BE02', '0925', '12365788','162437','310');

/******** Insert rows into STUDENT table *************/

INSERT INTO STUDENT
VALUES
('45729753', 'Smith', 'John', 'L', 'jsmith@Snodsdale.edu', '6315478478', '15875976', '123456');

INSERT INTO STUDENT
VALUES
('89251747', 'Parker', 'Peter', NULL, 'pparker@Snodsdale.edu', '6317923051', '15875976', '123456');

INSERT INTO STUDENT
VALUES
('91638264', 'Saladino', 'Gabriel', 'D', 'gsaladino@Snodsdale.edu', '6315399048', '83520563', '236065');

INSERT INTO STUDENT
VALUES
('91063728', 'Castillo', 'Michael', NULL, 'mcastillo@Snodsdale.edu', '5167909399', '83520563', '236065');

INSERT INTO STUDENT
VALUES
('71843296', 'Alloy', 'Linda', 'J', 'lalloy@Snodsdale.edu', '6317909098', '83529475', '754932');

INSERT INTO STUDENT
VALUES
('18632749', 'Hyland', 'Danielle', 'L', 'dhyland@Snodsdale.edu', '5166540055', '83529475', '754932');

INSERT INTO STUDENT
VALUES
('91746274', 'Beasley', 'Pam', NULL, 'pbeasley@Snodsdale.edu', '6317450769', '93467365', '927483');

INSERT INTO STUDENT
VALUES
('91067119', 'Halpern', 'Jim', NULL, 'jhaloerb@Snodsdale.edu', '5164754396', '93467365', '927483');


/******** Insert rows into ENROLL table *************/

INSERT INTO ENROLL
VALUES
('45729753', '69465', '2018-08-10', 3.2);

INSERT INTO ENROLL
VALUES
('45729753', '753954', '2018-08-10', 3.2);

INSERT INTO ENROLL
VALUES
('89251747', '69465', '2018-10-01', 2.5);

INSERT INTO ENROLL
VALUES
('89251747', '856352', '2018-10-01', 2.5);

INSERT INTO ENROLL
VALUES
('89251747', '753954', '2018-10-01', 2.5);

INSERT INTO ENROLL
VALUES
('91063728', '856352', '2018-09-22', 3.9);

INSERT INTO ENROLL
VALUES
('91063728', '757569', '2018-09-22', 3.9);

INSERT INTO ENROLL
VALUES
('71843296', '954721', '2018-09-18', 3.4);



