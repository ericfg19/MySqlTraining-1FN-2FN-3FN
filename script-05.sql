
#script catalogo
INSERT INTO `loopie_catalog`.`User` (`Id`, `Username`, `FirstName`, `LastName`, `Email`, `BirthDate`, `IsActive`, `UserConfirmed`, `CognitoId`, `UserType`) 
VALUES ('48', 'usuario.treinamento', 'Usuário', 'Treinamento', 
'alessandroazeredo.rj@gmail.com', '1999-01-01 00:00:00', '1', '1', '6062daf1-95e5-4b98-8341-3b0fc4dc0b28', '1');

INSERT INTO `loopie_demo2`.`Employee` (`Id`, `UserId`, `GroupId`) VALUES ('9', '48', '1');

SELECT * FROM `loopie_catalog`.`User`;
SELECT * FROM `loopie_demo2`.`Employee`;

#aula 5

CREATE TABLE SectorTraining (
	Id int NOT NULL AUTO_INCREMENT COMMENT 'Identificador do setor',
    Description varchar(100) NOT NULL COMMENT 'Descrição de Setor',
    PRIMARY KEY (Id)
);

#Drop table SectorTraining;

Create Table OfficeTraining (
	Id int NOT NULL AUTO_INCREMENT COMMENT 'Identificador do Cargo',
    Description varchar(100) NOT NULL COMMENT 'Descrição de Cargo',
    SectorId int NOT NULL COMMENT 'Identificador do Setor',
    PRIMARY KEY (Id),
    Constraint FK_OfficeTraining_SectorId foreign key(SectorId) references SectorTraining(Id)
);

CREATE TABLE EmployeeTraining (
	Id int NOT NULL AUTO_INCREMENT COMMENT 'Identificador do',
    Name varchar(100) NOT NULL COMMENT 'Nome do Funcionário',
    Cpf varchar(11) NOT NULL COMMENT 'CPF do Funcionário',
    BirthDate datetime NOT NULL COMMENT 'Data de Nascimento',
    Genre int NOT NULL COMMENT 'Gênero do funcionário <1>Masculino, <2>Feminino.',
    AdmissionDate datetime NOT NULL COMMENT 'Data de Admissãodo Funcionário',
    OfficeId int NOT NULL COMMENT 'Identificador do cargo do Funcionário',
    Wage decimal(19,05) NOT NULL COMMENT 'Salário do Funcionário',
    IndicatedBy int DEFAULT NULL COMMENT 'Indicado por outro Funcionário',
    IsActive int NOT NULL COMMENT '<0>Inativo, <1>Ativo',
    CreatedDate datetime NOT NULL COMMENT 'Data de inclusão do Funcionário',
    UpdatedDate datetime DEFAULT NULL COMMENT 'Data da última alteração do Funcionário',
    InactivatedDate datetime DEFAULT NULL COMMENT 'Data em que o funcionário foi inativado.',
    CreatedUserId int NOT NULL COMMENT 'Identificador do usuário de criação',
    UpdatedUserId int DEFAULT NULL COMMENT 'Identificador do usuário da última atualização',
    PRIMARY KEY (Id),
    
    CONSTRAINT FK_EmployeeTraining_CreatedUserId_2 FOREIGN KEY (CreatedUserId) REFERENCES loopie_catalog.User (Id),
    CONSTRAINT FK_EmployeeTraining_UpdatedUserId_2 FOREIGN KEY (UpdatedUserId) REFERENCES loopie_catalog.User (Id),
    CONSTRAINT FK_EmployeeTraining_OfficeId_2 FOREIGN KEY (OfficeId) REFERENCES OfficeTraining (Id)
);

CREATE TABLE EmployeeTrainingContact (
	Id int NOT NULL AUTO_INCREMENT COMMENT 'Identificador do contato',
    EmployeeTrainingId int NOT NULL COMMENT 'Identificador do funcionário',
    Type smallint NOT NULL COMMENT 'Tipo do contato <1>E-mail, <2>Telefone Fixo e <3>Celular',
    Contact varchar(100) NOT NULL COMMENT 'Conteúdo do contato',
    MainContact int NOT NULL default 0 COMMENT 'Contato principal <0>Não, <1>Sim',
    PRIMARY KEY (Id),
    
    KEY FK_EmployeeTrainingContact_FK_EmployeeTrainingId (EmployeeTrainingId),
    CONSTRAINT FK_EmployeeTrainingContact_EmployeeTrainingId FOREIGN KEY (EmployeeTrainingId) references EmployeeTraining (Id)
);