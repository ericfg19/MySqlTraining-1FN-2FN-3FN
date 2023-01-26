#15
SELECT SUM(et.Wage) as TotalSalario
FROM EmployeeTraining et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
WHERE ot.SectorId = 4;

#16
SELECT Name as Nome,
		ot.Description as Cargo
FROM EmployeeTraining et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
WHERE et.InticatedBy is null;

#17
SELECT st.Description as Setor,
		ot.Description as Cargo
FROM EmployeeTraining et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Group By ot,Description, st.Description;