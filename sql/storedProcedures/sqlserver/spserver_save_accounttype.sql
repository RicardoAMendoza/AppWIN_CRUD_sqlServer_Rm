use bd_bank
go

create procedure spserver_save_accounttype

@aidaccounttype int = null,
@aaccountType varchar (45) = null,
@acomission decimal (22,6) = null,
@aoverdraft decimal (22,6) = null,
@ainterestRate decimal (22,6) = null

as
begin

if @aidaccounttype = 0
 insert into taccounttype (accountType, comission, overdraft, interestRate) 
 values (@aaccountType, @acomission, @aoverdraft, @ainterestRate);
else
 update taccounttype set accountType = @aaccountType, comission = @acomission, overdraft = @aoverdraft, interestRate = @ainterestRate
 where idaccounttype = @aidaccounttype
end
go

select * from taccounttype
 
 -- spserver_save_accounttype
 exec spserver_save_accounttype
 @aidaccounttype = 0,
 @aaccountType = UnPaidAccount,
 @acomission = 0.12,
 @aoverdraft = 2000,
 @ainterestRate = 0
 
 exec spserver_save_accounttype
 @aidaccounttype = 0,
 @aaccountType = PaidAccount,
 @acomission = 0,
 @aoverdraft = 0,
 @ainterestRate = 0.15