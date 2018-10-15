USE [bd_bank]
GO

Create PROC [dbo].[spserver_save_account]

 @aidaccount int = NULL,
 @anumber varchar(45)= NULL,
 @abalance decimal(22,6)= NULL,
 @aopenDate date = NULL,
 @aidemployee int = NULL,
 @aidagencies int = NULL

AS
BEGIN

IF @aidaccount = 0 
  INSERT INTO taccount (number,balance,openDate,idemployee,idagencies)
  VALUES (@anumber,@abalance,@aopenDate,@aidemployee,@aidagencies);
ELSE
  UPDATE taccount 
   SET number = @anumber, balance = @abalance ,openDate = @aopenDate, idemployee = @aidemployee, idagencies = @aidagencies
  WHERE idaccount = @aidaccount
END
GO

exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA1UA1",
@abalance = 2300,
@aopenDate  = '2016-08-17 23:59:59',
@aidemployee  = 2,
@aidagencies  = 6

exec spserver_save_account
@aidaccount  = 0,
@anumber = "PA1PA1",
@abalance = 2999,
@aopenDate  = '2016-08-17 23:59:59',
@aidemployee  = 2,
@aidagencies  = 6

exec spserver_save_clientaccount
@aidaccounttype = 1,
@aidclient = 1006,
@aidaccount = 1

exec spserver_save_clientaccount
@aidaccounttype = 2,
@aidclient = 1006,
@aidaccount = 2

-- ---------------------------------------

exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA2UA2",
@abalance = 2000,
@aopenDate  = '2018-12-17 23:59:59',
@aidemployee  = 3,
@aidagencies  = 6

exec spserver_save_account
@aidaccount  = 0,
@anumber = "PA2PA2",
@abalance = 2999,
@aopenDate  = '2016-08-17 23:59:59',
@aidemployee  = 3,
@aidagencies  = 6

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1007,
@aidaccount = 4

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1007,
@aidaccount = 3







