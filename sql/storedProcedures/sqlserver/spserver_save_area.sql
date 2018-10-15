use bd bd_bank
go

create proc spserver_save_area
@acodearea varchar(45) = NULL,
@adescription varchar (45) = null

As
begin
Declare @valid int;
--select count(*) into @valid from tarea where codearea = @acodearea

set @valid = (select count(*) from tarea where codearea = @acodearea);

if @valid = 0
insert into tarea (codearea, description) values(@acodearea,@adescription);
else
Update tarea set description = @adescription where codearea = @acodearea
end
go