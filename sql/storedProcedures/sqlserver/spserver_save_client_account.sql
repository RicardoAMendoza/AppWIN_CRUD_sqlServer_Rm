use bd_bank
go

Create proc spserver_save_client_account

@aidaccounttype int = null,
@aidclient int = null,
@aidaccount int = null

AS
BEGIN
  DECLARE @valid int;
    set @valid =(select COUNT (*) FROM tclient_account WHERE idaccounttype = @aidaccounttype AND idclient = @aidclient);
  IF @valid = 0
  --IF @aidaccounttype =0 && @aidclient = 0
    INSERT INTO tclient_account (idaccounttype, idclient, idaccount )
	VALUES (@aidaccounttype,  @aidclient, @aidaccount );
 ELSE 	
   UPDATE tclient_account SET  idaccount = @aidaccount 
   WHERE idaccounttype = @aidaccounttype AND idclient = @aidclient;
 END
GO 

exec spserver_save_clientaccount
@aidaccounttype = 1,
@aidclient = 1006,
@aidaccount = 1

exec spserver_save_clientaccount
@aidaccounttype = 2,
@aidclient = 1006,
@aidaccount = 2
	
-- ------------------------------
	
exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1007,
@aidaccount = 4

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1007,
@aidaccount = 3
	