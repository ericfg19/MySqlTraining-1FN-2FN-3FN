#CONSULTAS
SELECT * FROM EmployeeTraining; 
#et.
SELECT * FROM OfficeTraining; 
#ot.
SELECT * FROM SectorTraining; 
#st.
SELECT * FROM EmployeeTrainingContact; 
#etc.

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
SELECT Name, max(Wage) as MaiorSalario, st.Description as Setor
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Group By ot.SectorId;

#6
SELECT Name, min(Wage) as MenorSalario, st.Description as Setor
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Group By ot.SectorId;

#7
SELECT et.Id, Name, ot.Description, ec.Contact 
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingContact as etc ON etc.Id = ec.EmployeeTrainingId
Group By etc.Id;

#8
SELECT * FROM EmployeeTraining 
WHERE AdmissionDate between '2010-01-01' and '2020-12-31' 
Order By AdmissionDate;

#9
SELECT Name, ot.Description, IndicatedBy 
FROM EmployeeTraining as et 
INNER JOIN OfficeTraining as ot ON  ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Order By IndicatedBy desc;


#10
SELECT Name, year(curdate()) - year(AdmissionDate) as EmployeeTime 
FROM EmployeeTraining where year(curdate()) - year(AdmissionDate) >= 10;

#11
#11.1 Item 1 para consultar os que tem contato
SELECT distinct Name, AdmissionDate, ot.Description, et.Id 
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingContact as etc ON et.Id = etc.EmployeeTrainingId
Group By etc.Id;

#11.2 Item 2 para dar o resultado da questão
SELECT  et.Id, et.Name, ot.Description 
FROM EmployeeTraining et
INNER JOIN OfficeTraining ot ON ot.id = et.OfficeId
LEFT JOIN EmployeeTrainingContact etc ON etc.EmployeeTrainingId = et.id
WHERE etc.id IS NULL;

#12
SELECT et.Name, ot.Description, et.Contact
FROM EmployeeTraining et
INNER JOIN OfficeTraining ot ON ot.id = et.OfficeId
LEFT JOIN EmployeeTrainingContact etc ON etc.EmployeeTrainingId = et.id
WHERE etc.Contact = 1;

#13
SELECT st.description, SUM(et.Wage) as salarios 
FROM SectorTraining st
INNER JOIN OfficeTraining ot ON ot.SectorId = st.id
INNER JOIN EmployeeTraining et ON et.OfficeId = ot.id
GROUP BY st.id, et.wage;

#14
SELECT et.Name as Nome,
	   ot.Description as Cargo,
       eti.name as 'Indicado Por'
FROM employeetraining et
INNER JOIN OfficeTraining ot On ot.id = et.OfficeId
INNER JOIN Employeetraining eti On et.IndicatedBy = eti.Id;