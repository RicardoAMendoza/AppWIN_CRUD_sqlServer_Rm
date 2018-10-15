CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_client`(
in aidclient int(11),
in aclientNumber varchar(45),
in aname varchar(45),
in alastName varchar(45),
in aemail varchar(45),
in aimg varchar(45),
in aaddress varchar(45),
in acardNumber varchar(45),
in anip varchar(45),
in aidagencies int(11),
in aidemployee int(11)
)
BEGIN

IF aidclient = 0 THEN
INSERT INTO `bd_bank`.`tclient`(`idclient`,`clientNumber`,`name`,`lastName`,`email`,`img`,`address`,`cardNumber`,`nip`,`idagencies`,`idemployee`)
VALUES (`aidclient`,`aclientNumber`,`aname`,`alastName`,`aemail`,`aimg`,`aaddress`,`acardNumber`,`anip`,`aidagencies`,`aidemployee`);
SELECT 
    MAX(idclient)
INTO aidclient FROM
    `bd_bank`.`tclient`;
ELSE
UPDATE `bd_bank`.`tclient` 
SET `idclient`=`aidclient`,`clientNumber`=`aclientNumber`,`name`=`aname`,`lastName`=`alastName`,`email`=`aemail`,`img`=`aimg`,`address`=`aaddress`,`cardNumber`=`acardNumber`
WHERE `idclient`=`aidclient`;
END IF;
END