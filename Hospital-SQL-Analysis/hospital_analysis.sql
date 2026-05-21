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

--ADVANCED SQL QUERIES


SELECT City, COUNT(*) AS Total_Patients
FROM dbo.[Hospital_Data$]
GROUP BY City
HAVING COUNT(*) > 200;


SELECT Patient_ID, Treatment_Cost
FROM dbo.[Hospital_Data$]
WHERE Treatment_Cost > (
    SELECT AVG(Treatment_Cost)
    FROM dbo.[Hospital_Data$]
);


SELECT Patient_ID,
       Treatment_Cost,
       RANK() OVER (ORDER BY Treatment_Cost DESC) AS Cost_Rank
FROM dbo.[Hospital_Data$];


SELECT Patient_ID,
       City,
       Treatment_Cost,
       ROW_NUMBER() OVER (
           PARTITION BY City
           ORDER BY Treatment_Cost DESC
       ) AS Row_Num
FROM dbo.[Hospital_Data$];


SELECT Patient_ID,
       Age,
       CASE
           WHEN Age < 18 THEN 'Child'
           WHEN Age BETWEEN 18 AND 60 THEN 'Adult'
           ELSE 'Senior'
       END AS Age_Group
FROM dbo.[Hospital_Data$];
