#1
SELECT * FROM EmployeeTraining;

SELECT Name, Cpf, BirthDate FROM EmployeeTraining Order By Name;

#2
SELECT Name, Cpf, AdmissionDate FROM EmployeeTraining Order By AdmissionDate;

SELECT Name, Cpf, AdmissionDate FROM EmployeeTraining Order By AdmissionDate desc;

#3 - 
SELECT Name, year(curdate()) - year(BirthDate) as Age FROM EmployeeTraining where year(curdate()) - year(BirthDate) >= 40;