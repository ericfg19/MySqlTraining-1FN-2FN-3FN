INSERT INTO SectorTraining (Id, Description)
VALUES (1, 'VENDAS'),
		(2, 'RH'),
        (3, 'FINANCEIRO'),
        (4, 'TI'),
        (5, 'MARKETING');
		
SELECT * FROM SectorTraining;

#office training
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (1, 'Gerente de Vendas', 1);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (2, 'Consultor de Vendas', 1);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (3, 'Gerente de RH', 2);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (4, 'Analista de RH', 2);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (5, 'Gerente Financeiro', 3);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (6, 'Analista Financeiro', 3);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (7, 'Gerente de Projetos', 4);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (8, 'Arquiteto de Software', 4);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (9, 'Programador Sênior', 4);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (10, 'Programador Pleno', 4);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (11, 'Programador Júnior', 4);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (12, 'Gerente de Marketing', 5);
INSERT INTO OfficeTraining (Id, Description, SectorId) VALUES (13, 'Consultor de Marketing', 5);


SELECT * FROM OfficeTraining;


----- EmployeeTraining  ----------------------------------------------------------------------------------------------------------------------
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Arthur Antunes Coimbra Zico', '42145157069', '1953-03-03', 1, '2000-05-21', 7, 20.000, null, true, CURDATE(), 9);

INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Ronaldo Luís Nazário Fenômeno', '83909020011', '1976-09-18', 1, '2010-03-15', 5, 18.000, null, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Marta Vieira da Silva', '14120301028', '1986-02-19', 2, '2011-03-15', 3, 18.000, null, true, CURDATE(), 9);

INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Cristiano Ronaldo dos Santos', '86498074027', '1985-02-05', 1, '2015-10-24', 1, 18.000, null, true, CURDATE(), 9);

INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Lionel Andrés Messi', '83909020011', '1987-06-24', 1, '2016-01-15', 8, 14.000, null, true, CURDATE(), 9);

INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Dejan Petković', '15762633047', '1972-09-10', 1, '2012-05-21', 2, 6.000, 1, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Clarence Clyde Seedorf', '55213546030', '1976-04-01', 1, '2013-04-02', 2, 6.000, 2, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Andrés Iniesta Luján', '83117075020', '1984-05-11', 1, '2018-08-10', 4, 8.000, 5, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Hortência Maria de Fátima Marcari', '62085037011', '1959-09-23', 2, '2018-08-10', 4, 8.000, 1, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Adriano Leite Ribeiro Imperador', '68469073001', '1982-02-17', 1, '2016-12-10', 6, 8.000, 2, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Filipe Luís Kasmirski', '68469073001', '1985-08-09', 1, '2018-05-26', 9, 8.000, 1, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Neymar da Silva Santos Júnior', '83940234010', '1992-02-05', 1, '2014-08-27', 2, 6.000, 1, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('David Luiz Moreira Marinho', '26743050024', '1987-04-22', 1, '2014-10-07', 9, 8.000, null, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Gabriel Barbosa Almeida GabiGol', '26743050024', '1996-08-30', 1, '2016-10-07', 10, 5.000, 1, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Giorgian Daniel De Arrascaeta Benedetti', '26743050024', '1994-06-01', 1, '2019-06-07', 10, 5.000, 2, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Kylian Sanmi Mbappé Lottin', '55152274094', '1998-12-20', 1, '2020-04-09', 11, 2.500, 14, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Vinícius José Paixão de Oliveira Júnior', '52567581014', '2000-06-12', 1, '2020-05-10', 11, 2.500, 14, true, CURDATE(), 9);
    
INSERT INTO EmployeeTraining (Name, Cpf, BirthDate, Genre, AdmissionDate, OfficeId, Wage, IndicatedBy, IsActive, CreatedDate, CreatedUserId) 
	VALUES ('Cristiane Rozeira', '15932490047', '1985-05-15', 2, '2021-07-09', 11, 2.500, 3, true, CURDATE(), 9);

#
Select Id, Name from EmployeeTraining;

----- EmployeeTraining Contact ----------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (1, 1, 'arthur.zico.coimbra@gmail.com', 1);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (1, 3, '21995818181', 0);

INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (1, 2, '2181198119', 0);
 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (2, 1, 'ronaldo.fenomeno@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (2, 3, '21992002202', 1);

INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (2, 2, '2132323232', 0);

 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (3, 1, 'marta.vieira@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (3, 3, '21995959595', 1);
 
  ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (4, 1, 'cristiano.cr7.ronaldo@gmail.com', 1);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (4, 3, '219912121212', 0);
    
  ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (5, 1, 'lionel.messi@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (5, 3, '21978862022', 1);
    
 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (6, 1, 'dejan.petkovic43@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (6, 3, '21992001609', 1);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (6, 2, '2143432009', 0);
    
---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (9, 1, 'maria.hortencia@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (9, 3, '21995969596', 1);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (9, 2, '2145456622', 0);

 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (12, 1, 'neymar.junior@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (12, 3, '21920110504', 1); 
    
 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (13, 1, 'david.luiz.2022@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (13, 3, '21992022333', 1); 
    
 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (14, 1, 'Gabi.barbosa.1922@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (14, 3, '21999192022', 1); 
    
 ---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (17, 1, 'viny.junior@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (17, 3, '21998989898', 1); 
    
---------------------------------------------------------------------------------------------------------------------------   
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (18, 1, 'cristiane.rozeira@gmail.com', 0);
    
INSERT INTO EmployeeTrainingContact (EmployeeTrainingId, Type, Contact, MainContact) 
	VALUES (18, 3, '21997979797', 1);

#
SELECT * FROM EmployeeTrainingContact;