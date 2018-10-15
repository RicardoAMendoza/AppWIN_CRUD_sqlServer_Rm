-- -----------------------------------------------------
-- Table bd_bank.tclient
-- -----------------------------------------------------
CREATE DATABASE bd_crud_client
GO

-- -----------------------------------------------------
-- Table bd_bank.tclient
-- -----------------------------------------------------
USE bd_crud_client
GO

Create table tclient
(
idclient int not null identity (1,1),
clientNumber varchar (45) NULL DEFAULT NULL,
name varchar (45) NULL DEFAULT NULL,
lastName varchar (45) NULL DEFAULT NULL,
email varchar (45) NULL DEFAULT NULL,
img varchar(45) NULL DEFAULT NULL,
address varchar (45) NULL DEFAULT NULL,
cardNumber varchar (45) NULL DEFAULT NULL,
nip varchar (45) NULL DEFAULT NULL,
idagencies int not null,
idemployee int not null,
primary key (idclient),
)

-- -----------------------------------------------------
-- PROCEDURE spserver_save_client
-- -----------------------------------------------------
USE bd_crud_client
GO

CREATE PROCEDURE spserver_save_client
@aidclient int = null,
@aclientNumber varchar(45) = null,
@aname varchar(45) = null,
@alastName varchar(45) = null,
@aemail varchar(45) = null,
@aimg varchar(45) = null,
@aaddress varchar(45) = null,
@acardNumber varchar(45) = null,
@anip varchar(45) = null,
@aidagencies int = null,
@aidemployee int = null

AS
BEGIN

IF @aidclient = 0
INSERT INTO tclient(clientNumber,name,lastName,email,img,address,cardNumber,nip,idagencies,idemployee)
VALUES (@aclientNumber,@aname,@alastName,@aemail,@aimg,@aaddress,@acardNumber,@anip,@aidagencies,@aidemployee);
-- SELECT 
-- MAX(idclient)
-- INTO @aidclient FROM
-- tclient;
ELSE
UPDATE tclient 
SET clientNumber = @aclientNumber , name = @aname , lastName = @alastName ,email = @aemail , img = @aimg , address = @aaddress , cardNumber = @acardNumber, idagencies = @aidagencies, idemployee = @aidemployee
WHERE idclient = @aidclient 

END
GO

-- -----------------------------------------------------
-- PROCEDURE selectallTclient
-- -----------------------------------------------------
USE bd_crud_client
GO

CREATE PROCEDURE selectallTclient

AS
BEGIN
select * from tclient
END
GO

-- -----------------------------------------------------
-- PROCEDURE insertTclient
-- -----------------------------------------------------
USE bd_crud_client
GO

CREATE PROCEDURE insertTclient
@aidclient int = null,
@aclientNumber varchar(45) = null,
@aname varchar(45) = null,
@alastName varchar(45) = null,
@aemail varchar(45) = null,
@aimg varchar(45) = null,
@aaddress varchar(45) = null,
@acardNumber varchar(45) = null,
@anip varchar(45) = null,
@aidagencies int = null,
@aidemployee int = null

AS
BEGIN
INSERT INTO tclient(clientNumber,name,lastName,email,img,address,cardNumber,nip,idagencies,idemployee)
VALUES (@aclientNumber,@aname,@alastName,@aemail,@aimg,@aaddress,@acardNumber,@anip,@aidagencies,@aidemployee);
END
GO

exec insertTclient(0,'C3C3','Oprah','Winfreh','oprah@google.com','winfreh.png','3030 Hochelaga','123458','apple',1,3);

exec insertTclient
@aclientNumber  = 'C252C5',
@aname  = 'Salvador',
@alastName  = 'Dali',
@aemail  = 'dali@google.com',
@aimg  = 'dali.png',
@aaddress  = '1545 La Jounnesse',
@acardNumber = '123459',
@anip  = 'pintor',
@aidagencies  = 7,
@aidemployee = 5

-- -----------------------------------------------------
-- PROCEDURE updateTclient
-- -----------------------------------------------------
USE bd_crud_client
GO

CREATE PROCEDURE updateTclient
@aidclient int = null,
@aclientNumber varchar(45) = null,
@aname varchar(45) = null,
@alastName varchar(45) = null,
@aemail varchar(45) = null,
@aimg varchar(45) = null,
@aaddress varchar(45) = null,
@acardNumber varchar(45) = null,
@anip varchar(45) = null,
@aidagencies int = null,
@aidemployee int = null

AS
BEGIN
UPDATE tclient 
SET clientNumber = @aclientNumber , name = @aname , lastName = @alastName ,email = @aemail , img = @aimg , address = @aaddress , cardNumber = @acardNumber
WHERE idclient = @aidclient
END
GO

exec updateTclient
@aidclient = 15,
@aclientNumber  = 'C25C25',
@aname  = 'Victoria',
@alastName  = 'Mendoza',
@aemail  = 'victoria@google.com',
@aimg  = 'victoria.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123459',
@anip  = 'victory',
@aidagencies  = 7,
@aidemployee = 5

-- -----------------------------------------------------
-- PROCEDURE deleteTclient
-- -----------------------------------------------------
USE bd_crud_client
GO

CREATE PROCEDURE deleteTclient
@aidclient int = null
AS
BEGIN

DELETE FROM tclient where idclient= @aidclient

END
GO

use bd_crud_client
go
exec deleteTclient @aidclient = 18


-- -----------------------------------------------------
-- EXEC spserver_save_client
-- -----------------------------------------------------
USE bd_crud_client
GO

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C1C1',
@aname  = 'Bill',
@alastName  = 'Gates',
@aemail  = 'gates@microsoft.com',
@aimg  = 'gates.png',
@aaddress  = '3540 Masson',
@acardNumber = '123456',
@anip  = 'windows',
@aidagencies  = 6,
@aidemployee = 2

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C2C2',
@aname  = 'Steve',
@alastName  = 'Jobs',
@aemail  = 'jobs@apple.com',
@aimg  = 'jobs.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123457',
@anip  = 'windows',
@aidagencies  = 6,
@aidemployee = 3

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C3C3',
@aname  = 'Oprah',
@alastName  = 'Winfreh',
@aemail  = 'oprah@google.com',
@aimg  = 'winfreh.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123458',
@anip  = 'own',
@aidagencies  = 6,
@aidemployee = 4

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C5C5',
@aname  = 'Salvador',
@alastName  = 'Dali',
@aemail  = 'dali@google.com',
@aimg  = 'dali.png',
@aaddress  = '1545 La Jounnesse',
@acardNumber = '123459',
@anip  = 'pintor',
@aidagencies  = 7,
@aidemployee = 5

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C4C4',
@aname  = 'Rosa',
@alastName  = 'Huerta',
@aemail  = 'huerta@google.com',
@aimg  = 'huerta.png',
@aaddress  = '227 Belanger',
@acardNumber = '123469',
@anip  = 'unix',
@aidagencies  = 7,
@aidemployee = 6

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C6C6',
@aname  = 'Wendy',
@alastName  = 'Savala',
@aemail  = 'savala@google.com',
@aimg  = 'savala.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123479',
@anip  = 'cpp',
@aidagencies  = 7,
@aidemployee = 7

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C7C7',
@aname  = 'Mark',
@alastName  = 'Zurembek',
@aemail  = 'mark@facebook.com',
@aimg  = 'zurembek.png',
@aaddress  = '616 Place Brazeau',
@acardNumber = '123489',
@anip  = 'facebook',
@aidagencies  = 8,
@aidemployee = 8

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C8C8',
@aname  = 'Antonio',
@alastName  = 'Maya',
@aemail  = 'maya@facebook.com',
@aimg  = 'maya.png',
@aaddress  = '316 Chilpa',
@acardNumber = '123499',
@anip  = 'alfonso13',
@aidagencies  = 8,
@aidemployee = 9

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C9C9',
@aname  = 'Itzel',
@alastName  = 'Alvaro',
@aemail  = 'itzel@facebook.com',
@aimg  = 'alvaro.png',
@aaddress  = '527 Alexander',
@acardNumber = '123599',
@anip  = 'quimica',
@aidagencies  = 8,
@aidemployee = 10

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C10C10',
@aname  = 'Fanny',
@alastName  = 'Santos',
@aemail  = 'santos@facebook.com',
@aimg  = 'santos.png',
@aaddress  = '333 Saint-Croax',
@acardNumber = '123699',
@anip  = 'veracruz',
@aidagencies  = 9,
@aidemployee = 11

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C11C11',
@aname  = 'Manuel',
@alastName  = 'Brizuela',
@aemail  = 'brizuela@facebook.com',
@aimg  = 'brizuela.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123799',
@anip  = 'construccion',
@aidagencies  = 9,
@aidemployee = 12

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C12C12',
@aname  = 'Pedro',
@alastName  = 'Espana',
@aemail  = 'espana@facebook.com',
@aimg  = 'espana.png',
@aaddress  = '555 Tacherau',
@acardNumber = '123899',
@anip  = 'soldadura',
@aidagencies  = 9,
@aidemployee = 13