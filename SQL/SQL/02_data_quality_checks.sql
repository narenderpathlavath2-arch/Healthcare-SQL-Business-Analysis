 1. Check duplicate appointments
SELECT AppointmentID, COUNT(*) AS Count
FROM appointments
GROUP BY AppointmentID
HAVING COUNT(*) > 1;


2. Check missing values
SELECT
    COUNT(*) AS TotalRows,
    COUNT(PatientID) AS PatientIDs,
    COUNT(DoctorID) AS DoctorIDs,
    COUNT(Department) AS Departments,
    COUNT(Charges) AS Charges,
    COUNT(WaitTime) AS WaitTimes,
    COUNT(Status) AS Statuses
FROM appointments;


 3. Check appointment status
SELECT
    Status,
    COUNT(*) AS AppointmentCount
FROM appointments
GROUP BY Status;


 4. Check date range
SELECT
    MIN(Date) AS StartDate,
    MAX(Date) AS EndDate
FROM appointments;
