create database hospitalsystem
use hospitalsystem
-- 2.1
create table Doctor (
    DoctorID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Specialty VARCHAR(50),
    Phone VARCHAR(15) ,
    Email VARCHAR(100),
    Address VARCHAR(100),
    Experience INT ,
    Gender VARCHAR(10),
    Salary DECIMAL(10, 2),
    JoiningDate DATE 
);

--2.1.1
create table Patient (
    PatientID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10) ,
    Disease VARCHAR(100) ,
    AdmissionDate DATE ,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    DoctorID VARCHAR(10) ,
    RoomNumber INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
--2.1.2
insert into Doctor 
(DoctorID, Name, Specialty, Phone, Email, Address, Experience, Gender, Salary, JoiningDate) 
VALUES
('d101', 'jawad', 'math', '1234567890', 'jawad@gmail.com', 'islambad', 5, 'Male', 150000, '2020-01-01'),
('d102', 'nadeem', 'it', '9876543210', 'nadeem@gmail.com', 'rawalpindi', 10, 'Male', 120000, '2021-03-15');
--2.1.3
insert into Patient
(PatientID, Name, Age, Gender, Disease, AdmissionDate, Phone, Address, DoctorID, RoomNumber)
values
('p201', 'aliya', 30, 'Female', 'heart decise', '2025-01-01', '5551112222', 'islambad', 'D101', 101),
('p202', 'amad', 45, 'Male', 'migraine', '2025-01-05', '5553334444', 'lahore', 'd102', 102),
('p203', 'adisa', 35, 'Female', 'head pain', '2025-01-10', '5555556666', 'krachi', NULL, 103);

--2.2.1
select Patient.PatientID, Patient.Name, Patient.Disease, Doctor.Name 
from Patient
inner join Doctor ON Patient.DoctorID = Doctor.DoctorID;
--2.2.2
select Patient.PatientID, Patient.Name, Patient.Disease, Doctor.Name
from Patient
left join Doctor on Patient.DoctorID = Doctor.DoctorID;
--2.2.3
select Patient.PatientID, Patient.Name , Patient.Disease, Doctor.Name 
from Patient
right join Doctor on Patient.DoctorID = Doctor.DoctorID;
--2.3...left join
select Doctor.DoctorID, Doctor.Name, Doctor.Specialty, Patient.PatientID, Patient.Name 
from Doctor
left join Patient on Doctor.DoctorID = Patient.DoctorID;

--2.4
create view DoctorPatientView as
select 
    Doctor.DoctorID, 
    Doctor.Name as DoctorName, --here its show error that it will unique thats why i create object
    Doctor.Specialty, 
    Patient.PatientID, 
    Patient.Name, 
    Patient.Disease
from Doctor
left join Patient ON Doctor.DoctorID = Patient.DoctorID;
--2.5
select * from DoctorPatientView;

