CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_accounts`(
/*taccount*/
in aidaccount int(11),
in anumber varchar(45),
in abalance DECIMAL(22,6),
in aidclient int(11),
in aidemployee int(11),
in aidagencies int(11),
/*taccounttype*/
in aidaccounttype int(11),
in aaccountType varchar(45),
in acomission DECIMAL(22,6),
in aoverdraft DECIMAL(22,6),
in ainterestRate DECIMAL(22,6),
/*ttransaction*/
in aidtransaction int(11)
-- in aidclient int(11),
-- in aidemployee int(11),
-- in aidagencies int(11)
)
BEGIN
/*	Ajouter les inserts des tables taccount, tauteur, tclassement, tediteur  etc */ 
/*taccount*/
IF  aidaccount = 0  THEN
	INSERT INTO `bd_bank`.`taccount`(`idaccount`,`number`,`balance`,`idclient`,`idemployee`,`idagencies`)
	                          VALUES(aidaccount,anumber,abalance,aidclient,aidemployee,aidagencies);
	SELECT 
    MAX(idaccount)
INTO aidaccount FROM
    bd_bank.taccount;
ELSE
   UPDATE `bd_bank`.`taccount`
   SET `number` = `anumber`,`balance` = `abalance`,`idclient` = `aidclient`,`idemployee` = `aidemployee`,`idagencies` = `aidagencies`
   WHERE `idaccount`=`aidaccount`;   
END IF;

/*taccounttype*/
IF  aidaccounttype = 0  THEN
	INSERT INTO `bd_bank`.`taccounttype`(`idaccounttype`,`accountType`,`comission`,`overdraft`,`interestRate`,`idaccount`)
	                              VALUES(aidaccounttype,aaccountType,acomission,aoverdraft,ainterestRate,aidaccount);
	SELECT 
    MAX(idaccounttype)
INTO aidaccounttype FROM
    bd_bank.taccounttype;
ELSE
   UPDATE `bd_bank`.`taccounttype`
   SET `accountType` = `aaccountType`,`comission` = `acomission`,`overdraft` = `aoverdraft`,`interestRate` = `ainterestRate`,`idaccount` = `aidaccount`
   WHERE `idaccounttype`=`aidaccounttype`;   
END IF;

/*ttransaction*/
IF  aidtransaction = 0  THEN
	INSERT INTO `bd_bank`.`ttransaction`(`idtransaction`,`balance`,`comission`,`overdraft`,`interestRate`,`idaccount`,`idclient`,`idemployee`,`idagencies`)
	                              VALUES(`aidtransaction`,`abalance`,`acomission`,`aoverdraft`,`ainterestRate`,`aidaccount`,`aidclient`,`aidemployee`,`aidagencies`);
	SELECT 
    MAX(idtransaction)
    INTO aidtransaction FROM `bd_bank`.`ttransaction`;
ELSE
   UPDATE `bd_bank`.`ttransaction`
   SET `balance` = `abalance`,`transactionDate` = now(),`comission` = `acomission`,`overdraft` = `aoverdraft`,`interestRate` = `ainterestRate`,`idaccount` = `aidaccount`,`idclient` = `aidclient`,`idemployee` = `aidemployee`,`idagencies` = `aidagencies`
   WHERE `idtransaction`=`aidtransaction`;   
END IF;
    
END