 
-- spserver_save_admin
EXEC [dbo].[spserver_save_admin] 
@aidadmin  = 0,
@aname = 'Andy',
@alastName = 'Garcia',
@aemail = 'garcia@teccart.qc.ca',
@aimg = 'andy.png',
@apassword = 'sql'

EXEC [dbo].[spserver_save_admin] 
@aidadmin  = 2,
@aname = 'Ricardo',
@alastName = 'Mendoza',
@aemail = 'omnimtv@gmail.com',
@aimg = 'ricardo.png',
@apassword = 'omni'

EXEC [dbo].[spserver_save_admin] 
@aidadmin  = 3,
@aname = 'Ricker',
@alastName = 'Alcindor',
@aemail = 'rickers@teccart.qc.ca',
@aimg = 'rickers.png',
@apassword = 'database'

-- spserver_save_directoragencie
EXEC [dbo].[spserver_save_directoragencie] 
@aidtdirectorAgencie  = 0,
@aname = 'Patrick',
@alastName = 'Dorre',
@aemail = 'dorre@teccart.qc.ca',
@aimg = 'dorre.png',
@asalary = 4000.220000

EXEC [dbo].[spserver_save_directoragencie] 
@aidtdirectorAgencie  = 0,
@aname = 'Fernand',
@alastName = 'Bikatal-Bi-Tonye',
@aemail = 'fernand@gmail.com',
@aimg = 'fernand.png',
@asalary = 1000.330000

EXEC [dbo].[spserver_save_directoragencie] 
@aidtdirectorAgencie  = 0,
@aname = 'Richard',
@alastName = 'Saint-Vingt-Cent',
@aemail = 'richard@teccart.qc.ca',
@aimg = 'richard.png',
@asalary = 600.990000

-- spserver_save_bank
EXEC [dbo].[spserver_save_bank] 
@aidbank  = 0,
@aname = 'National Bank',
@acapital = 500000,
@aaddress = '3030 Hochelaga'

-- spserver_save_agencies
EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A1A1',
@aname = 'Rosemont NB',
@aaddress = '2727 Rosemont',
@aidbank = 3,
@aidtdirectorAgencie = 1

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A2A2',
@aname = 'MontRoyal NB',
@aaddress = '3131 MontRoyal',
@aidbank = 3,
@aidtdirectorAgencie = 2

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A3A3',
@aname = 'Beaubien NB',
@aaddress = '247 Beaubien',
@aidbank = 3,
@aidtdirectorAgencie = 3

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A4A4',
@aname = 'Alexander NB',
@aaddress = '456 Alexander',
@aidbank = 3,
@aidtdirectorAgencie = 2

-- spserver_save_employee
EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E1E1',
@aname  = 'Juan',
@alastName = 'Zamanego',
@aemail  = 'zamanego@gamil.com',
@aimg  = 'zamanego.png',
@ahiringDate  = '2017-02-23',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E3E3',
@aname  = 'Cesar',
@alastName = 'Silva',
@aemail  = 'cesar@gmail.com',
@aimg  = 'silva.png',
@ahiringDate  = '2014-09-19',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E4E4',
@aname  = 'Ana',
@alastName = 'Fernandez',
@aemail  = 'fernandez@gmail.com',
@aimg  = 'fernandez.png',
@ahiringDate  = '2013-11-15',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E2E2',
@aname  = 'Rauoul',
@alastName = 'Nguiya',
@aemail  = 'raoul@gmail.com',
@aimg  = 'nguiya.png',
@ahiringDate  = '2013-03-23',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E5E5',
@aname  = 'Maria',
@alastName = 'Houda',
@aemail  = 'maria@google.com',
@aimg  = 'houda.png',
@ahiringDate  = '2012-01-01',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E6E6',
@aname  = 'Maria',
@alastName = 'Arteaga',
@aemail  = 'arteaga@gmail.com',
@aimg  = 'arteaga.png',
@ahiringDate  = '2011-02-03',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E7E7',
@aname  = 'Maria',
@alastName = 'Madany',
@aemail  = 'madany@google.com',
@aimg  = 'madany.png',
@ahiringDate  = '2015-08-10',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E8E8',
@aname  = 'Roseely',
@alastName = 'Brand',
@aemail  = 'brand@gmail.com',
@aimg  = 'brand.png',
@ahiringDate  = '2012-05-13',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E10E10',
@aname  = 'Esmeralda',
@alastName = 'Mafogue',
@aemail  = 'esmeralda@gmail.com',
@aimg  = 'mafogue.png',
@ahiringDate  = '2000-09-02',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E9E9',
@aname  = 'Silvayn',
@alastName = 'Trudeau',
@aemail  = 'trudeau@gmail.com',
@aimg  = 'trudeau.png',
@ahiringDate  = '2012-04-21',
@aidagencies  = 9

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E11E11',
@aname  = 'Brack',
@alastName = 'Obama',
@aemail  = 'obama@gamil.com',
@aimg  = 'brand.png',
@ahiringDate  = '1999-01-12',
@aidagencies  = 9

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E12E12',
@aname  = 'Benoit',
@alastName = 'Fracoise',
@aemail  = 'benoit@gmail.com',
@aimg  = 'francoise.png',
@ahiringDate  = '1998-04-03',
@aidagencies  = 9

-- spserver_save_client
exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C1C1',
@aname  = 'Bill',
@alastName  = 'Gates',
@aemail  = 'gates@microsoft.com',
@aimg  = 'gates.png',
@aaddress  = '3540 Masson',
@acardNumber = '123456',
@anip  = 'windows',
@aidagencies  = 6,
@aidemployee = 2

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C2C2',
@aname  = 'Steve',
@alastName  = 'Jobs',
@aemail  = 'jobs@apple.com',
@aimg  = 'jobs.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123457',
@anip  = 'windows',
@aidagencies  = 6,
@aidemployee = 3

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C3C3',
@aname  = 'Oprah',
@alastName  = 'Winfreh',
@aemail  = 'oprah@google.com',
@aimg  = 'winfreh.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123458',
@anip  = 'own',
@aidagencies  = 6,
@aidemployee = 4

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C5C5',
@aname  = 'Salvador',
@alastName  = 'Dali',
@aemail  = 'dali@google.com',
@aimg  = 'dali.png',
@aaddress  = '1545 La Jounnesse',
@acardNumber = '123459',
@anip  = 'pintor',
@aidagencies  = 7,
@aidemployee = 5

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C4C4',
@aname  = 'Rosa',
@alastName  = 'Huerta',
@aemail  = 'huerta@google.com',
@aimg  = 'huerta.png',
@aaddress  = '227 Belanger',
@acardNumber = '123469',
@anip  = 'unix',
@aidagencies  = 7,
@aidemployee = 6

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C6C6',
@aname  = 'Wendy',
@alastName  = 'Savala',
@aemail  = 'savala@google.com',
@aimg  = 'savala.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123479',
@anip  = 'cpp',
@aidagencies  = 7,
@aidemployee = 7

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C7C7',
@aname  = 'Mark',
@alastName  = 'Zurembek',
@aemail  = 'mark@facebook.com',
@aimg  = 'zurembek.png',
@aaddress  = '616 Place Brazeau',
@acardNumber = '123489',
@anip  = 'facebook',
@aidagencies  = 8,
@aidemployee = 8

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C8C8',
@aname  = 'Antonio',
@alastName  = 'Maya',
@aemail  = 'maya@facebook.com',
@aimg  = 'maya.png',
@aaddress  = '316 Chilpa',
@acardNumber = '123499',
@anip  = 'alfonso13',
@aidagencies  = 8,
@aidemployee = 9

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C9C9',
@aname  = 'Itzel',
@alastName  = 'Alvaro',
@aemail  = 'itzel@facebook.com',
@aimg  = 'alvaro.png',
@aaddress  = '527 Alexander',
@acardNumber = '123599',
@anip  = 'quimica',
@aidagencies  = 8,
@aidemployee = 10

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C10C10',
@aname  = 'Fanny',
@alastName  = 'Santos',
@aemail  = 'santos@facebook.com',
@aimg  = 'santos.png',
@aaddress  = '333 Saint-Croax',
@acardNumber = '123699',
@anip  = 'veracruz',
@aidagencies  = 9,
@aidemployee = 11

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C11C11',
@aname  = 'Manuel',
@alastName  = 'Brizuela',
@aemail  = 'brizuela@facebook.com',
@aimg  = 'brizuela.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123799',
@anip  = 'construccion',
@aidagencies  = 9,
@aidemployee = 12

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C12C12',
@aname  = 'Pedro',
@alastName  = 'Espana',
@aemail  = 'espana@facebook.com',
@aimg  = 'espana.png',
@aaddress  = '555 Tacherau',
@acardNumber = '123899',
@anip  = 'soldadura',
@aidagencies  = 9,
@aidemployee = 13

-- spserver_save_client
exec spserver_save_area
@acodearea = FIN,
@adescription =Finances

exec spserver_save_area
@acodearea = FIN,
@adescription =Finances

exec spserver_save_area
@acodearea = INS,
@adescription = Insurances

exec spserver_save_area
@acodearea = INV,
@adescription = Investments

exec spserver_save_area
@acodearea = SAV,
@adescription = Savings

select * from tarea 

-- spserver_save_employ_area
Exec spserver_save_employ_area
@aidemployee = 2,
@acodearea = 'FIN'

Exec spserver_save_employ_area
@aidemployee = 3,
@acodearea = 'FIN'

Exec spserver_save_employ_area
@aidemployee = 4,
@acodearea = 'FIN'

Exec spserver_save_employ_area
@aidemployee = 5,
@acodearea = 'INS'

Exec spserver_save_employ_area
@aidemployee = 6,
@acodearea = 'INS'

Exec spserver_save_employ_area
@aidemployee = 7,
@acodearea = 'INS'

Exec spserver_save_employ_area
@aidemployee = 8,
@acodearea = 'INV'

Exec spserver_save_employ_area
@aidemployee = 9,
@acodearea = 'INV'

Exec spserver_save_employ_area
@aidemployee  = 10,
@acodearea = 'INV'

Exec spserver_save_employ_area
@aidemployee  = 11,
@acodearea = 'SAV'

Exec spserver_save_employ_area
@aidemployee = 12,
@acodearea = 'SAV'

Exec spserver_save_employ_area
@aidemployee = 13,
@acodearea = 'SAV'


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
 
 -- spserver_save_account
 
-- C1C1 ----------------------------
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

-- C2C2 ----------------------------
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
@aidaccounttype = 1,
@aidclient = 1007,
@aidaccount = 3

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1007,
@aidaccount = 4

-- C3C3 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "UA3UA3",
@abalance = 4900,
@aopenDate  = '2011-09-17 23:59:59',
@aidemployee  = 4,
@aidagencies  = 6

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1008,
@aidaccount = 5

exec spserver_save_account
@aidaccount  = 0,
@anumber = "PA3PA3",
@abalance = 9999,
@aopenDate  = '2012-08-21 23:59:59',
@aidemployee  = 4,
@aidagencies  = 6

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1008,
@aidaccount = 6

-- C4C4 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U4UA4",
@abalance = 19000,
@aopenDate  = '2013-02-17 23:59:59',
@aidemployee  = 6,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1010,
@aidaccount = 7

exec spserver_save_account
@aidaccount  = 0,
@anumber = "PA4PA4",
@abalance = 2399,
@aopenDate  = '2011-03-11 23:59:59',
@aidemployee  = 6,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1010,
@aidaccount = 8
 
 -- C5C5 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U5UA5",
@abalance = 20000,
@aopenDate  = '2000-02-07 23:59:59',
@aidemployee  = 5,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1009,
@aidaccount = 9

exec spserver_save_account
@aidaccount  = 10,
@anumber = "PA5PA5",
@abalance = 2399,
@aopenDate  = '2000-03-02 23:59:59',
@aidemployee  = 5,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1009,
@aidaccount = 10

-- C6C6 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U6UA6",
@abalance = 18000,
@aopenDate  = '2009-02-24 23:59:59',
@aidemployee  = 7,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1011,
@aidaccount = 11

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P64PA6",
@abalance = 15000,
@aopenDate  = '2009-02-24 23:59:59',
@aidemployee  = 7,
@aidagencies  = 7

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1011,
@aidaccount = 12

-- C7C7 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U7UA7",
@abalance = 13000,
@aopenDate  = '2010-04-21 23:59:59',
@aidemployee  = 8,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1012,
@aidaccount = 13

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P74PA7",
@abalance = 7000,
@aopenDate  = '2010-04-21 23:59:59',
@aidemployee  = 8,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1012,
@aidaccount = 14

-- C8C8 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U8UA8",
@abalance = 9000,
@aopenDate  = '2013-04-26 23:59:59',
@aidemployee  = 9,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1013,
@aidaccount = 15

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P84PA8",
@abalance = 15000,
@aopenDate  = '2013-04-26 23:59:59',
@aidemployee  = 9,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1013,
@aidaccount = 16

-- C9C9 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U9UA9",
@abalance = 18000,
@aopenDate  = '2006-02-30 23:59:59',
@aidemployee  = 10,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1014,
@aidaccount = 17

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P9PA9",
@abalance = 14000,
@aopenDate  = '2006-03-30 23:59:59',
@aidemployee  = 10,
@aidagencies  = 8

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1014,
@aidaccount = 18

-- C10C10 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U10UA10",
@abalance = 9000,
@aopenDate  = '2007-03-21 23:59:59',
@aidemployee  = 11,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1015,
@aidaccount = 19

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P10PA10",
@abalance = 7000,
@aopenDate  = '2007-03-21 23:59:59',
@aidemployee  = 11,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1015,
@aidaccount = 20

-- C11C11 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U11UA11",
@abalance = 2300,
@aopenDate  = '1998-01-21 23:59:59',
@aidemployee  = 12,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1016,
@aidaccount = 21

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P11PA11",
@abalance = 700,
@aopenDate  = '1998-01-21 23:59:59',
@aidemployee  = 12,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1016,
@aidaccount = 22

-- C12C12 ----------------------------
exec spserver_save_account
@aidaccount  = 0,
@anumber = "U12UA12",
@abalance = 21000,
@aopenDate  = '1996-01-15 23:59:59',
@aidemployee  = 13,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 1,
@aidclient = 1017,
@aidaccount = 23

exec spserver_save_account
@aidaccount  = 0,
@anumber = "P12PA12",
@abalance = 16000,
@aopenDate  = '1996-01-15 23:59:59',
@aidemployee  = 13,
@aidagencies  = 9

exec spserver_save_client_account
@aidaccounttype = 2,
@aidclient = 1017,
@aidaccount = 24
 































