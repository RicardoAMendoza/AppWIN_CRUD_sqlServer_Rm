-- sp_save_agencies
call sp_save_agencies(0,'A1A1','Rosemont NB','2727 Rosemont',1,1);
call sp_save_agencies(0,'A2A2','MontRoyal NB','3131 MontRoyal',1,2);
call sp_save_agencies(3,'A3A3','Beaubien NB','247 Beaubien',1,3);
call sp_save_agencies(0,'A4A4','Alexander NB','456 Alexander',1,2);

-- sp_save_employee
call sp_save_employee(0,'E1E1','Juan','Zamanego','zamanego.png','2017-02-23',1);
call sp_save_employee(0,'E3E3','Cesar','Silva','silva.png','2014-09-19',1);
call sp_save_employee(0,'E4E4','Ana','Fernandez','fernandez.png','2013-11-15',1);

call sp_save_employee(0,'E2E2','Rauoul','Nguiya','nguiya.png','2013-03-23',2);
call sp_save_employee(0,'E5E5','Maria','Houda','houda.png','2012-01-01',2);
call sp_save_employee(0,'E6E6','Maria','Arteaga','arteaga.png','2011-02-03',2);

call sp_save_employee(0,'E7E7','Maria','Madany','madany.png','2015-08-10',4);
call sp_save_employee(0,'E8E8','Roseely','Brand','brand.png','2012-05-13',4);
call sp_save_employee(0,'E10E10','Esmeralda','Mafogue','mafogue.png','2000-09-02',4);

call sp_save_employee(0,'E9E9','Silvayn','Trudeau','trudeau.png','2012-04-21',3);
call sp_save_employee(0,'E11E11','Brack','Obama','brand.png','1999-01-12',3);
call sp_save_employee(0,'E12E12','Benoit','Fracoise','francoise.png','1998-04-03',3);

-- sp_save_client
call sp_save_client(0,'C1C1','Bill','Gates','gates.png','3540 Masson','123456','windows',1,1);
call sp_save_client(0,'C2C2','Steve','Jobs','jobs.png','148 Cousineau','123457','apple',1,2);
call sp_save_client(0,'C3C3','Oprah','Winfreh','winfreh.png','3030 Hochelaga','123458','apple',1,3);

call sp_save_client(0,'C5C5','Salvador','Dali','dali.png','1545 La Jounnesse','123459','pintor',2,4);
call sp_save_client(0,'C4C4','Rosa','Huerta','huerta.png','227 Belanger','123469','unix',2,5);
call sp_save_client(0,'C6C6','Wendy','Savala','savala.png','3030 Hochelaga','123479','cpp',2,6);

call sp_save_client(0,'C7C7','Mark','Zurembek','zurembek.png','616 Place Brazeau','123489','facebook',3,10);
call sp_save_client(0,'C8C8','Antonio','Maya','maya.png','316 Chilpa','123499','alfonso13',3,11);
call sp_save_client(9,'C9C9','Itzel','Alvaro','alvaro.png','527 Alexander','123599','quimica',3,12);

call sp_save_client(0,'C10C10','Fanny','Santos','santos.png','333 Saint-Croax','123699','veracruz',4,7);
call sp_save_client(0,'C11C11','Manuel','Brizuela','brizuela.png','148 Cousineau','123799','construccion',4,8);
call sp_save_client(0,'C12C12','Pedro','Espana','alvaro.png','555 Tacherau','123899','soldadura',4,9);

-- sp_save_area
call sp_save_area('FIN','Finances');
call sp_save_area('INS','Insurances');
call sp_save_area('INV','Investments');
call sp_save_area('SAV','Savings');

SELECT COUNT(*) FROM bd_bank.tclient;

-- sp_save_employ_area
call sp_save_employ_area(1,'FIN');
call sp_save_employ_area(2,'FIN');
call sp_save_employ_area(3,'FIN');

call sp_save_employ_area(4,'INS');
call sp_save_employ_area(5,'INS');
call sp_save_employ_area(6,'INS');

call sp_save_employ_area(7,'INV');
call sp_save_employ_area(8,'INV');
call sp_save_employ_area(9,'INV');

call sp_save_employ_area(10,'SAV');
call sp_save_employ_area(11,'SAV');
call sp_save_employ_area(12,'SAV');

-- sp_save_accounts
call sp_save_accounts(2,'UA2UA2',2999.00,2,2,1,0,'Unpaid account',0.12,2000,0,2);
call sp_save_accounts(3,'UA3UA3',4999.99,3,3,1,0,'Unpaid account',0.12,2000,0,0);
call sp_save_accounts(4,'UA4UA4',10000.99,5,5,2,0,'Unpaid account',0.12,2000,0,1);




