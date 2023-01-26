#CONSULTAS
SELECT * FROM EmployeeTraining;
SELECT * FROM OfficeTraining;
SELECT * FROM SectorTraining; 
SELECT * FROM EmployeeTrainingContact;

#1
SELECT Name, AdmissionDate, ot.Description, st.Description  
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId;

#2
SELECT count(*) as Num, (case when(Genre = 1)
        then 'Male'
        else 'Female'
        end) as Genre
        FROM EmployeeTraining Group By Genre;

#3
SELECT count(*) as Num, st.Description 
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Group By st.Description Order By count(*);

#4

SELECT Name, Wage, st.Description, ot.Description 
FROM EmployeeTraining as et 
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
WHERE st.Id = 4
Order By Wage desc;

#5

#6

