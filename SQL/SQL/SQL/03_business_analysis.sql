PATIENT ANALYSIS

 1. Total number of unique patients
SELECT COUNT(DISTINCT PatientID) AS TotalPatients
FROM appointments;


 2. Patients by age group
SELECT
    CASE
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 45 THEN '31-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Above 60'
    END AS AgeGroup,
    COUNT(DISTINCT PatientID) AS PatientCount
FROM appointments
GROUP BY AgeGroup
ORDER BY PatientCount DESC;


 3. Patients by gender
SELECT
    Gender,
    COUNT(DISTINCT PatientID) AS PatientCount
FROM appointments
GROUP BY Gender
ORDER BY PatientCount DESC;


 4. Patients by city
SELECT
    City,
    COUNT(DISTINCT PatientID) AS PatientCount
FROM appointments
GROUP BY City
ORDER BY PatientCount DESC;


 DOCTOR & DEPARTMENT ANALYSIS

 5. Appointments by doctor
SELECT
    DoctorName,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY DoctorName
ORDER BY AppointmentCount DESC;


 6. Appointments by department
SELECT
    Department,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY Department
ORDER BY AppointmentCount DESC;


7. Demand by specialization
SELECT
    Specialization,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY Specialization
ORDER BY AppointmentCount DESC;


 8. Doctor workload
SELECT
    DoctorName,
    Specialization,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY DoctorName, Specialization
ORDER BY AppointmentCount DESC;


 REVENUE / CHARGES ANALYSIS

 9. Total charges
SELECT
    SUM(Charges) AS TotalCharges
FROM appointments;


10. Charges by department
SELECT
    Department,
    SUM(Charges) AS TotalCharges
FROM appointments
GROUP BY Department
ORDER BY TotalCharges DESC;


 11. Charges by visit type
SELECT
    VisitType,
    SUM(Charges) AS TotalCharges
FROM appointments
GROUP BY VisitType
ORDER BY TotalCharges DESC;


 12. Average charge per appointment
SELECT
    AVG(Charges) AS AverageChargePerAppointment
FROM appointments;


 OPERATIONAL PERFORMANCE ANALYSIS

 13. Average waiting time
SELECT
    AVG(WaitTime) AS AverageWaitTime
FROM appointments;


 14. Waiting time by department
SELECT
    Department,
    AVG(WaitTime) AS AverageWaitTime
FROM appointments
GROUP BY Department
ORDER BY AverageWaitTime DESC;


 15. Waiting time by doctor
SELECT
    DoctorName,
    AVG(WaitTime) AS AverageWaitTime
FROM appointments
GROUP BY DoctorName
ORDER BY AverageWaitTime DESC;


 16. Completed vs cancelled appointments
SELECT
    Status,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY Status
ORDER BY AppointmentCount DESC;


 17. Department with highest waiting time
SELECT
    Department,
    AVG(WaitTime) AS AverageWaitTime
FROM appointments
GROUP BY Department
ORDER BY AverageWaitTime DESC
LIMIT 1;
