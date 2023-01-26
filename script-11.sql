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