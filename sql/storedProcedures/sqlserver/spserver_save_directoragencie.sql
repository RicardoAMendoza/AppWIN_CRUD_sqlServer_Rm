USE [bd_bank]
GO

Create PROC [dbo].[spserver_save_directoragencie]

 @aidtdirectorAgencie int = NULL,
 @aname varchar(45)= NULL,
 @alastName varchar(45)= NULL,
 @aemail varchar(45)= NULL,
 @aimg varchar(45)= NULL,
 @asalary DECIMAL(22,6)= NULL

AS
BEGIN

IF @aidtdirectorAgencie = 0 
INSERT INTO tdirectoragencie(name,lastName,email,img,salary)
VALUES (@aname,@alastName,@aemail,@aimg,@asalary);
ELSE
UPDATE tdirectoragencie 
SET name=@aname,lastName=@alastName,email=@aemail,img=@aimg, salary=@asalary
WHERE idtdirectorAgencie=@aidtdirectorAgencie

END