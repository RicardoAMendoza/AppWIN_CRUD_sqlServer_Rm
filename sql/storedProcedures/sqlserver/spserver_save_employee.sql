USE bd_bank
GO

CREATE PROCEDURE spserver_save_employee
@aidemployee int = null,
@aemployeeNumber varchar(45) = null,
@aname varchar(45) = null,
@alastName varchar(45)= null,
@aemail varchar(45) = null,
@aimg varchar(45) = null,
@ahiringDate DATE = null,
@aidagencies int = null

BEGIN
AS

IF aidemployee = 0
INSERT INTO temployee (employeeNumber,name,lastName,email,img,hiringDate,idagencies)
VALUES (@aemployeeNumber,@aname,@alastName,@aemail,@aimg,@ahiringDate,@aidagencies);
-- SELECT 
-- MAX(idemployee)
-- INTO @aidemployee FROM
-- temployee;
ELSE
UPDATE temployee
SET employeeNumber = @aemployeeNumber , name = @aname , lastName = @alastName , email = @aemail, img = @aimg, hiringDate = @ahiringDate, idagencies = @aidagencies
WHERE idemployee = @aidemployee;

END
GO