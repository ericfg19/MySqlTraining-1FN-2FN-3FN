#11
SELECT st.id,
		st.Description,
		count(*) as Employees
FROM EmployeeTraining et 
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN SectorTraining as st ON st.Id = ot.SectorId
Group By st.Id, st.Description having count(*) >= 3;

#12
SELECT Name, 
		(case when(Genre = 1)
        then 'Masculino'
        else 'Feminino'
        end) as Gênero
FROM EmployeeTraining;

#13
SELECT Name as Nome,
		ot.Description as Cargo,
        ec.Contact as Contato
FROM EmployeeTraining et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingContact as ec ON ec.EmployeeTrainingId = et.Id
WHERE etc.Tpe = 2;

#14
SELECT ot.Id as CargoID,
		ot.Description as Cargo,
        st.Id as SetorID,
        st.Description as Setor
FROM SectorTraining as st
INNER JOIN OfficeTraining as ot ON ot.SectorId = st.Id
WHERE NOT EXISTS
(
	SELECT * FROM EmployeeTraining et
    WHERE et.OfficeId = ot.Id
);
