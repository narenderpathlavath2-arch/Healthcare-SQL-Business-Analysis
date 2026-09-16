HEALTHCARE & PHARMACEUTICAL BUSINESS ANALYSIS
SQL Business Analyst Project


1. PROJECT OVERVIEW

This project analyzes healthcare appointment data using SQL.

The goal is to identify patterns in patient demand, doctor workload,
department performance, charges, waiting time, and appointment status.

The analysis is designed from a Business Analyst perspective, where
data is converted into business insights and recommendations.


2. DATASET

The dataset contains 60 healthcare appointment records.

Main fields include:

- Appointment
- Patient
- Age
- Gender
- City
- Doctor
- Specialization
- Department
- Visit Type
- Charges
- Wait Time
- Appointment Status


3. TOOLS USED

- MySQL
- MySQL Workbench
- SQL
- CSV Dataset


4. BUSINESS QUESTIONS

The project answers questions such as:

- How many unique patients are there?
- Which age groups and genders have more patients?
- Which cities have higher patient activity?
- Which doctors have the highest workload?
- Which departments have the most appointments?
- Which specializations have higher demand?
- Which departments generate the highest charges?
- Which visit types generate the highest charges?
- What is the average waiting time?
- Which department has the highest waiting time?
- What percentage of appointments are cancelled?


5. KEY BUSINESS INSIGHTS

- Pediatrics has the highest total charges.
- Pediatrics has the highest average waiting time at 35 minutes.
- The appointment cancellation rate is 5%.
- Follow-up visits generate the highest total charges.
- Dr. Meera has the highest appointment workload.


6. BUSINESS RECOMMENDATIONS

- Maintain sufficient staff and resources in Pediatrics.
- Review Pediatrics scheduling to reduce waiting time.
- Monitor appointment cancellations and use reminders.
- Ensure sufficient capacity for follow-up visits.
- Monitor Dr. Meera's workload and consider workload balancing.


7. PROJECT WORKFLOW

Raw Data
    ↓
Data Understanding
    ↓
Data Quality Checks
    ↓
MySQL Database
    ↓
SQL Business Analysis
    ↓
Business Insights
    ↓
Recommendations
    ↓
GitHub Project


8. PROJECT STRUCTURE

Dataset/
    Healthcare_Pure_Data(1).csv

SQL/
    01_data_setup.sql
    02_data_quality_checks.sql
    03_business_analysis.sql

Analysis/
    key_business_insights.txt

Documentation/
    README.txt
