#4
SELECT max(Wage) as BestSalary
FROM EmployeeTraining as et INNER JOIN OfficeTraining as ot 
On ot.Id = et.OfficeId WHERE ot.SectorId = 4;

SELECT * FROM EmployeeTraining;

#5

SELECT min(Wage) as BestSalary
FROM EmployeeTraining as et INNER JOIN OfficeTraining as ot 
On ot.Id = et.OfficeId WHERE ot.SectorId = 4;

SELECT * FROM EmployeeTraining;