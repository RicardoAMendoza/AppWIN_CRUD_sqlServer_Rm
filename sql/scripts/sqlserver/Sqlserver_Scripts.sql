
-- insert with out identity
insert into tadmin (idadmin, name, lastName, email, img, password)
values (2,'Ricardo', 'Mendoza', 'omnimtv@gmail.com', 'ricardo.png','omni')

-- rename a column
-- sp_rename 'employees.last_name', 'lname', 'COLUMN';
sp_rename 'tbank.adress', 'address' , 'COLUMN';

-- select * from tdirectorAgencie
select * from tdirectorAgencie;

-- alter table
USE [bd_bank]
GO
ALTER TABLE tagencies ADD idbank INT NOT NULL
USE [bd_bank] 
GO
ALTER TABLE tagencies ADD idtdirectorAgencie INT NOT NULL


-- ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE tdirectorgeneral DROP idbank 

-- create data base with query
-- -----------------------------------------------------
-- Schema bd_bank
-- -----------------------------------------------------
Create database bd_bank

USE [bd_bank]
GO

DROP TABLE [dbo].[tadmin]
GO

DROP TABLE [dbo].[tdirectorgeneral]
GO

DROP TABLE [dbo].[tbank]
GO

DROP TABLE [dbo].[tdirectorAgencie]
GO

DROP TABLE [dbo].[tagencies]
GO

DROP TABLE [dbo].[temployee]
GO

DROP TABLE [dbo].[tclient]
GO

DROP TABLE [dbo].[taccount]
GO

DROP TABLE [dbo].[ttransaction]
GO







DROP TABLE temployee
GO

DROP TABLE ttransaction
GO

USE [bd_bank]
GO

-- -----------------------------------------------------
-- Table `bd_bank`.`tadmin`
-- -----------------------------------------------------
Create table tadmin
(
idadmin int NOT NULL IDENTITY(1,1), -- auto increment
name varchar (45) NULL DEFAULT NULL,
lastName varchar (45) NULL DEFAULT NULL,
email varchar (45) NULL DEFAULT NULL,
img varchar (45) NULL DEFAULT NULL,
password varchar (45) NULL DEFAULT NULL,
primary key(idadmin),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tdirectorgeneral`
-- -----------------------------------------------------

Create table tdirectorgeneral
(
iddirector int NOT NULL identity (1,1), -- auto increment
name varchar (45) null default null,
lastName varchar (45) null default null,
email varchar (45) null default null,
img varchar (45) null default null,
salary decimal (22,6) null default null,
primary key (iddirector),
)

--idbank int not null,
--primary key (iddirector, idbank),

-- -----------------------------------------------------
-- Table `bd_bank`.`tbank`
-- -----------------------------------------------------
Create table tbank
(
idbank int not null identity(1,1),
name varchar(45)  null default null,
capital decimal(20,0) null default null,
address varchar (45) null default null,
primary key (idbank),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tdirectorAgencie`
-- -----------------------------------------------------
Create table tdirectorAgencie
(
idtdirectorAgencie int not null identity(1,1),
name varchar (45) null default null,
lastName varchar (45) null default null,
email varchar (45) null default null,
img varchar (45) null default null,
salary decimal (22,6) null default null,
primary key (idtdirectorAgencie ),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tagencies`
-- -----------------------------------------------------
Create table tagencies
(
idagencies int not null identity(1,1),
agencyNumber varchar (45) null default null,
name varchar (45) null default null,
address varchar (45) null default null,
idbank INT NOT NULL,
idtdirectorAgencie INT NOT NULL,
primary key (idagencies),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`temployee`
-- -----------------------------------------------------
Create table temployee
(
idemployee int not null identity(1,1),
employeeNumber varchar (45) NULL DEFAULT NULL,
name varchar (45) NULL DEFAULT NULL,
lastName varchar (45) NULL DEFAULT NULL,
email varchar (45) NULL DEFAULT NULL,
img varchar (45) NULL DEFAULT NULL,
hiringDate DATE NULL DEFAULT NULL,
idagencies int not null,
primary key (idemployee),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tclient`
-- -----------------------------------------------------
Create table tclient
(
idclient int not null identity (1,1),
clientNumber varchar (45) NULL DEFAULT NULL,
name varchar (45) NULL DEFAULT NULL,
lastName varchar (45) NULL DEFAULT NULL,
email varchar (45) NULL DEFAULT NULL,
img varchar NULL DEFAULT NULL,
address varchar (45) NULL DEFAULT NULL,
cardNumber varchar (45) NULL DEFAULT NULL,
nip varchar (45) NULL DEFAULT NULL,
idagencies int not null,
idemployee int not null,
primary key (idclient),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`taccount`
-- -----------------------------------------------------
Create table taccount
(
idaccount int not null identity (1,1),
number varchar (45) NULL DEFAULT NULL,
balance decimal (22,6) NULL DEFAULT NULL,
openDate DATETIME NULL DEFAULT NULL,
idemployee int NULL DEFAULT NULL,
idsgencies int NULL DEFAULT NULL,
primary key (idaccount), 
)

-- -----------------------------------------------------
-- Table `bd_bank`.`ttransaction`
-- -----------------------------------------------------
Create table ttransaction
(
idtransaction int not null identity (1,1),
balance decimal (22,6) NULL DEFAULT NULL,
transactionDate DATETIME NULL DEFAULT NULL,
comission decimal (22,6) NULL DEFAULT NULL,
overdraft decimal (22,6) NULL DEFAULT NULL,
interesRate decimal (22,6) NULL DEFAULT NULL,
idaccount int not null,
idclient int not null,
idemployee int not null,
idagencies int not null,
primary key (idtransaction),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`taccounttype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_bank`.`taccounttype` (
  `idaccounttype` INT(11) NOT NULL AUTO_INCREMENT,
  `accountType` VARCHAR(45) NULL DEFAULT NULL,
  `comission` DECIMAL(22,6) NULL DEFAULT NULL,
  `overdraft` DECIMAL(22,6) NULL DEFAULT NULL,
  `interestRate` DECIMAL(22,6) NULL DEFAULT NULL,
  PRIMARY KEY (`idaccounttype`))
ENGINE = InnoDB;





-- Insert into table admin
insert into tadmin ( name, lastName, email, img, password) 
values ( 'Andy', 'Garcia', 'garcia@teccart.ca.qc','andy.png','sql')

-- insert with identity
insert into tadmin (name, lastName, email, img, password)
values ('Ricardo', 'Mendoza', 'omnimtv@gmail.com', 'ricardo.png','omni')

insert into tadmin ( name, lastName, email, img, password)
values ('Rickers','Alcindor','rickers@teccart.ca.qc','rickers.png','database')

-- Insert into table bank
insert into tbank( name, capital, address) 
values ( 'National Bank', 5000000.00, '3030 Hochelaga')

-- insert into tdirectorAgencie
insert into tdirectorAgencie (name,lastName,email,img,salary)
values('Patrick','Dorre','dorre@teccart.ca.qc','dorre.png',40000)

insert into tdirectorAgencie (name,lastName,email,img,salary)
values('Fernand','Bikatal-Bi-Tonye','fernand@teccart.ca.qc','fernand.png',100000)

insert into tdirectorAgencie (name,lastName,email,img,salary)
values ('Richard','Saint-Vingt-Cent','ricahrd@teccart.ca.qc','richard.png',60000)