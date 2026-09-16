CREATE DATABASE pharma_healthcare_analysis;

USE pharma_healthcare_analysis;

CREATE TABLE appointments (
    AppointmentID VARCHAR(20),
    Date DATE,
    PatientID VARCHAR(20),
    PatientName VARCHAR(100),
    Age INT,
    Gender VARCHAR(20),
    City VARCHAR(100),
    DoctorID VARCHAR(20),
    DoctorName VARCHAR(100),
    Specialization VARCHAR(100),
    DepartmentID VARCHAR(20),
    Department VARCHAR(100),
    Location VARCHAR(100),
    VisitType VARCHAR(50),
    Charges INT,
    WaitTime INT,
    Status VARCHAR(50)
);
