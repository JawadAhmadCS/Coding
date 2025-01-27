create database studentsystem
use studentsystem
create table Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100)
);

create table Course (
    CourseID VARCHAR(10) PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Department VARCHAR(50),
    CreditHours INT
);

create table Enrollment (
    EnrollmentID INT PRIMARY KEY ,
    StudentID INT,
    CourseID VARCHAR(10) ,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

select * from Student;