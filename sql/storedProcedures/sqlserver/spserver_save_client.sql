USE bd_bank
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
SET clientNumber = @aclientNumber , name = @aname , lastName = @alastName ,email = @aemail , img = @aimg , address = @aaddress , cardNumber = @acardNumber
WHERE idclient = @aidclient 

END
GO