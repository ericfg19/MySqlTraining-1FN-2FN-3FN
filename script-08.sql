SELECT Name, year(curdate()) - year(BirthDate) as Age 
FROM EmployeeTraining where year(curdate()) - year(BirthDate) >= 40;

#Exemplo 2
SELECT Name, timestampdiff(year, BirthDate,curdate()) as Age 
FROM EmployeeTraining where timestampdiff(year, BirthDate,curdate()) >= 40;