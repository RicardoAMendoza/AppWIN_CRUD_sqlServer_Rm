use bd_bank
go

create proc spserver_save_employ_area

@aidemployee int = null,
@acodearea varchar (3)

AS
BEGIN
 DECLARE @valid int;

 SET @valid = (SELECT COUNT (*) FROM temploy_area WHERE idemployee = @aidemployee);
 IF @valid = 0

INSERT INTO temploy_area (idemployee, codearea) values (@aidemployee, @acodearea);
ELSE 
UPDATE temploy_area SET idemployee = @aidemployee, codearea = @acodearea WHERE idemployee = @aidemployee;
END
GO