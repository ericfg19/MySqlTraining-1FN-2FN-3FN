#6
SELECT * FROM EmployeeTraining 
WHERE Wage > 10.000;

#7
SELECT * FROM EmployeeTraining 
WHERE Wage <= 10.000;

#8
SELECT * FROM EmployeeTraining 
WHERE AdmissionDate between '2015-01-01' and '2022-12-31' Order By AdmissionDate;

#9 - 
SELECT * FROM EmployeeTraining et 
INNER JOIN OfficeTraining ot ON ot.Id = et.OfficeId
WHERE ot.SectorId = 4;

#10
SELECT st.Id, 
		st.Description, count(*) as Funcionarios
        FROM EmployeeTraining et
        INNER JOIN OfficeTraining ot ON et.OfficeId
        INNER JOIN SectorTraining st ON ot.SectorId
        Group By st.Id, st.Description
        Order By count(*);