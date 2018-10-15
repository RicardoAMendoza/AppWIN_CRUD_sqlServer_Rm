USE bd_bank 
GO

CREATE PROCEDURE spserver_save_agencies
@aidagencies int = NULL,
@aagencyNumber varchar(45)= NULL,
@aname varchar(45)= NULL,
@aaddress varchar(45)= NULL,
@aidbank int= NULL,
@aidtdirectorAgencie int = NULL

AS
BEGIN

IF @aidagencies = 0 
INSERT INTO tagencies(agencyNumber,name,address,idbank,idtdirectorAgencie)
VALUES (@aagencyNumber,@aname,@aaddress,@aidbank,@aidtdirectorAgencie);
-- SELECT 
-- MAX(idagencies)
-- INTO @aidagencies FROM
-- tagencies;
ELSE
UPDATE tagencies 
SET  agencyNumber = @aagencyNumber , name = @aname, address = @aaddress, idbank = @aidbank, idtdirectorAgencie = @aidtdirectorAgencie
WHERE idagencies = @aidagencies

END
GO