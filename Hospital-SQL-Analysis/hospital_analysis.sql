-- Hospital Data Analysis using SQL Server

SELECT Diagnosis, AVG(Length_of_Stay) AS Avg_stay
FROM dbo.[Hospital_Data$]
GROUP BY Diagnosis;

SELECT City, SUM(Treatment_Cost) AS Total_Treatment_Cost
FROM dbo.[Hospital_Data$]
GROUP BY City;

SELECT Gender, COUNT(*) AS Total_Patients
FROM dbo.[Hospital_Data$]
GROUP BY Gender;

SELECT TOP 5 Patient_ID, Treatment_Cost
FROM dbo.[Hospital_Data$]
ORDER BY Treatment_Cost DESC;

SELECT Department, COUNT(*) AS Total_Cases
FROM dbo.[Hospital_Data$]
GROUP BY Department;

SELECT Admission_Type, AVG(Treatment_Cost) AS Avg_Cost
FROM dbo.[Hospital_Data$]
GROUP BY Admission_Type;

SELECT City, COUNT(*) AS Patient_Count
FROM dbo.[Hospital_Data$]
GROUP BY City
ORDER BY Patient_Count DESC;
