CREATE TABLE EmployeeTrainingPayroll (
    Id int NOT NULL AUTO_INCREMENT COMMENT 'Identificador do pagamento',
    EmployeeTrainingId int NOT NULL COMMENT 'Identificador do funcionário',
    PayDate datetime NOT NULL COMMENT 'Data de pagamento',
    AmountPaid decimal(19,5) NOT NULL COMMENT 'Valor pago',
    primary key (Id),
    constraint FK_EmployeeTrainingPayroll_EmployeetrainingId foreign key (EmployeeTrainingId) references EmployeeTraining (Id)
);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (1, '2022-11-05', 19.500);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (1, '2022-12-05', 19.800);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (1, '2023-01-05', 19.900);

----------------------------------------------------------------------------------------------------
Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (2, '2022-11-05', 17.000);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (2, '2022-12-05', 16.500);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (2, '2023-01-05', 18.000);

----------------------------------------------------------------------------------------------------
Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (3, '2022-11-05', 18.000);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (3, '2022-12-05', 18.000);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (3, '2023-01-05', 18.000);

----------------------------------------------------------------------------------------------------
Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (4, '2022-11-05', 18.000);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (4, '2022-12-05', 17.000);

Insert into EmployeeTrainingPayroll (EmployeeTrainingId, PayDate, AmountPaid)
    Values (4, '2023-01-05', 17.500);

#CONSULTAS
SELECT * FROM EmployeeTraining; 
#et.
SELECT * FROM OfficeTraining; 
#ot.
SELECT * FROM SectorTraining; 
#st.
SELECT * FROM EmployeeTrainingContact; 
#etc.
SELECT * FROM EmployeeTrainingPayroll;
#etp.

#1
SELECT Name, ot.Description as Cargo, 
		Wage as Salário, etp.PayDate as DataPagamento, etp.AmountPaid as ValorPago, 
        CONCAT(Format(((etp.AmountPaid * 100) / et.wage) - 100 , 2),'%') as 'Desconto %'
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingPayroll as etp ON etp.EmployeeTrainingId = et.Id;

#2
SELECT Name, ot.Description Cargo, 
		etp.PayDate as DataPagamento, group_concat(monthname(etp.paydate) separator '/') as Trimestre,
        CONCAT(Format(sum(((etp.AmountPaid * 100) / et.wage) - 100) , 2),'%') as 'DescontoTotal%'
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingPayroll as etp ON etp.EmployeeTrainingId = et.Id
Group By Name;

#3
SELECT distinct Name, ot.Description Cargo, 
		Wage as Salário, 
		(SELECT etc1.Contact
        FROM EmployeeTrainingContact as etc1
        WHERE etc1.Type = 1 and etc1.EmployeeTrainingId = et.Id) as Email,
        (SELECT etc2.Contact
        FROM EmployeeTrainingContact as etc2
        WHERE etc2.Type = 2 and etc2.EmployeeTrainingId = et.Id) as Telefone,
        (SELECT etc3.Contact
        FROM EmployeeTrainingContact as etc3
        WHERE etc3.Type = 3 and etc3.EmployeeTrainingId = et.Id) as Celular
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingContact as etc ON et.Id = etc.EmployeeTrainingId
Group By etc.Id;

#4
SELECT Name, ot.Description Cargo, 
		etp.PayDate as DataPagamento, group_concat(monthname(etp.paydate) separator '/') as Trimestre,
        CONCAT(Format(((etp.AmountPaid * 100) / et.wage) - 100 , 2),'%') as 'DescontoTotal%'
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingPayroll as etp ON etp.EmployeeTrainingId = et.Id
WHERE timestampdiff(month, etp.PayDate, curdate()) <= 2 Group By Name having sum(et.wage) = sum(etp.AmountPaid);

#5
SELECT Name, ot.Description Cargo, 
		  etp.PayDate as DataPagamento, Wage as Salário, etp.AmountPaid as ValorPago,
        CONCAT(Format(((etp.AmountPaid * 100) / et.wage), 2),'%') as 'PercentualRecebido'
FROM EmployeeTraining as et
INNER JOIN OfficeTraining as ot ON ot.Id = et.OfficeId
INNER JOIN EmployeeTrainingPayroll as etp ON etp.EmployeeTrainingId = et.Id
WHERE etp.PayDate >= DATE_ADD(NOW(), INTERVAL -3 MONTH);