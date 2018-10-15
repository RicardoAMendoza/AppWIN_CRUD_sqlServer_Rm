USE bd_bank
GO

CREATE PROCEDURE spserver_save_clientInfoaccounts
-- spserver_save_client
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
@aidemployee int = null,
-- spserver_save_account
 @aidaccount int = NULL,
 @anumber varchar(45)= NULL,
 @abalance decimal(22,6)= NULL,
 @aopenDate date = NULL
AS
BEGIN
-- spserver_save_client
IF @aidclient = 0
INSERT INTO tclient(clientNumber,name,lastName,email,img,address,cardNumber,nip,idagencies,idemployee)
VALUES (@aclientNumber,@aname,@alastName,@aemail,@aimg,@aaddress,@acardNumber,@anip,@aidagencies,@aidemployee);
ELSE
UPDATE tclient 
SET clientNumber = @aclientNumber , name = @aname , lastName = @alastName ,email = @aemail , img = @aimg , address = @aaddress , cardNumber = @acardNumber
WHERE idclient = @aidclient 
-- spserver_save_account
IF @aidaccount = 0 
  INSERT INTO taccount (number,balance,openDate,idemployee,idagencies)
  VALUES (@anumber,@abalance,@aopenDate,@aidemployee,@aidagencies);
ELSE
  UPDATE taccount 
   SET number = @anumber, balance = @abalance ,openDate = @aopenDate, idemployee = @aidemployee, idagencies = @aidagencies
  WHERE idaccount = @aidaccount

END
GO

/* 1.  Realizar una funcion para llamar spserver_save_client_account */

exec spserver_save_clientInfoaccounts
-- spserver_save_client
exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C13C13',
@aname  = 'Andres Manuel',
@alastName  = 'Lopez Obrador',
@aemail  = 'amlo@morena.com',
@aimg  = 'lopez.png',
@aaddress  = '2018 Mexico',
@acardNumber = '123999',
@anip  = 'morena',
@aidagencies  = 7, -- Mont Royal
@aidemployee = 3, -- Cesar Silva

-- C13C13 ----------------------------
-- spserver_save_account
exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA13UA13",
@abalance = 200000,
@aopenDate  = '2018-09-02 23:59:59',
@aidemployee = 3, -- Cesar Silva
@aidagencies  = 7 -- Mont Royal

----------------------------------------------------
-- spserver_save_client_account ---  se genera primero taccount
exec spserver_save_client_account
@aidaccounttype = 1, -- UnPaidAccount
@aidclient = 2005, -- 'Lopez Obrador'
@aidaccount = 25


exec spserver_save_clientInfoaccounts
-- spserver_save_client
-- exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C14C14',
@aname  = 'Gabriel',
@alastName  = 'Montiel Garcia',
@aemail  = 'gaby@educacion.com',
@aimg  = 'gaby.png',
@aaddress  = '10 Purificacion',
@acardNumber = '124999',
@anip  = 'educacion',
@aidagencies  = 7, -- Mont Royal
@aidemployee = 3, -- Cesar Silva

-- C14C14 ----------------------------
-- spserver_save_account
-- exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA14UA14",
@abalance = 100000,
@aopenDate  = '2018-09-02 23:59:59',
--@aidemployee = 3, -- Cesar Silva
--@aidagencies  = 7 -- Mont Royal

----------------------------------------------------
-- spserver_save_client_account ---  se genera primero taccount
exec spserver_save_client_account
@aidaccounttype = 1, -- UnPaidAccount
@aidclient = 2006, -- 'Lopez Obrador'
@aidaccount = 26

exec spserver_save_clientInfoaccounts
-- spserver_save_client
 -- exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C15C15',
@aname  = 'Yolanda',
@alastName  = 'Mendoza',
@aemail  = 'yolanda@gmail.com',
@aimg  = 'yolanda.png',
@aaddress  = '22 Del Puente',
@acardNumber = '125999',
@anip  = 'educacion',
@aidagencies  = 7, -- Mont Royal
@aidemployee = 3, -- Cesar Silva

-- C15C15 ----------------------------
-- spserver_save_account
 --exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA15UA15",
@abalance = 400000,
@aopenDate  = '2018-09-02 23:59:59'
--@aidemployee = 3, -- Cesar Silva
--@aidagencies  = 7 -- Mont Royal

-- spserver_save_client_account ---  se genera primero taccount
exec spserver_save_client_account
@aidaccounttype = 1, -- UnPaidAccount
@aidclient = 2007, -- 'Yolanda'
@aidaccount = 27

-- C16C16 ----------------------------
exec spserver_save_clientInfoaccounts
@aidclient = 0,
@aclientNumber  = 'C16C16',
@aname  = 'Irma',
@alastName  = 'Mendoza',
@aemail  = 'irma@gmail.com',
@aimg  = 'irma.png',
@aaddress  = 'Mina de Tepojaco Manzana 68',
@acardNumber = '126999',
@anip  = 'educacion',
@aidagencies  = 7, -- Mont Royal
@aidemployee = 3, -- Cesar Silva
@aidaccount  = 0,
@anumber = "UA16UA16",
@abalance = 500000,
@aopenDate  = '2018-09-02 23:59:59'

-- spserver_save_client_account ---  se genera primero taccount
exec spserver_save_client_account
@aidaccounttype = 1, -- UnPaidAccount
@aidclient = 2008, -- 'Yolanda'
@aidaccount = 28




