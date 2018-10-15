USE [bd_bank]
GO

Create PROC [dbo].[spserver_save_bank]

 @aidbank int = NULL,
 @aname varchar(45)= NULL,
 @acapital DECIMAL(20,0))= NULL,
 @aaddress varchar(45)= NULL
 
AS
BEGIN

IF @aidbank = 0 
INSERT INTO tbank(name,capital,address)
VALUES (@aname,@acapital,@aaddress);
ELSE
UPDATE tbank 
SET name=@aname,capital=@acapital,address=@aaddress
WHERE idbank=@aidbank

END
GO