USE [bd_bank]
GO

Create PROC [dbo].[spserver_save_admin]

 @aidadmin int = NULL,
 @aname varchar(45)= NULL,
 @alastName varchar(45)= NULL,
 @aemail varchar(45)= NULL,
 @aimg varchar(45)= NULL,
 @apassword varchar(45)= NULL

AS
BEGIN

IF @aidadmin = 0 
INSERT INTO tadmin (name,lastName,img,email,password)
VALUES (@aname,@alastName,@aimg,@aemail,@apassword);
ELSE
UPDATE tadmin 
SET name=@aname,lastName=@alastName,img=@aimg,email=@aemail,password=@apassword
WHERE idadmin=@aidadmin

END