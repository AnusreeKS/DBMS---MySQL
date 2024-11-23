-- _______________________________________________________________________CREATING A SCHOOL DATABASE____________________________________________________________________________________________

CREATE DATABASE School;
USE School;

-- _________________________________________________________________________CREATING TABLE Students______________________________________________________________________________________________

CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50),
    Marks INT NOT NULL,
    Grade CHAR(1)
);

-- CREATING TABLE FOR TEACHERS
 
 CREATE TABLE Teachers (
    TeacherID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Department VARCHAR(100)
);

-- CREATING TABLE FOR COURSES

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Description TEXT,
    Credits INT NOT NULL CHECK (Credits > 0),
    Department VARCHAR(100)
);

   
   -- _________________________________________________________________INSERTING VALUES TO THE TABLE STUDENT______________________________________________________________________________________
   
   INSERT INTO STUDENT (Roll_No, FName, LName, Marks, Grade) VALUES
(1, 'Alice','Toms', 85, 'A'),
(2, 'Bob','Miller', 78, 'B'),
(3, 'Charlie', 'Puth',92, 'A'),
(4, 'Diana', 'Spencer',65, 'C');


-- ______________________________________________________________DISPLAYING ALL THE CONTENTS OF THE TABLE STUDENT__________________________________________________________________________________

SELECT * FROM STUDENT;

-- _____________________________________________________________ADDING THE COLUMN CONTACT TO THE TABLE STUDENT________________________________________________________________________________

ALTER TABLE STUDENT
ADD Contact VARCHAR(15);

SELECT * FROM STUDENT;	

--  ____________________________________________________________REMOVING THE GRADE COLUMN FROM THE STUDENT TABLE________________________________________________________________________________

ALTER TABLE STUDENT
DROP COLUMN Grade;

SELECT * FROM STUDENT;

-- __________________________________________________________________RENAMING THE TABLE STUDENT TO CLASSTEN______________________________________________________________________________________

RENAME TABLE STUDENT TO CLASSTEN;

SELECT * FROM CLASSTEN;

-- _________________________________________________________________DELETING ALL ROWS FROM THE TABLE CLASS TEN____________________________________________________________________________________

TRUNCATE TABLE CLASSTEN;

SELECT * FROM CLASSTEN;
				
-- __________________________________________________________________REMOVING THE TABLE CLASS TEN FROM THE DATABASE_______________________________________________________________________________

DROP TABLE CLASSTEN;

USE SCHOOL;
SHOW TABLES;

