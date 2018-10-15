CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_agencies`(
in aidagencies int(11),
in aagencyNumber varchar(45),
in aname varchar(45),
in aaddress varchar(45),
in aidbank int(11),
in aidtdirectorAgencie int(11)
)
BEGIN

IF aidagencies = 0 THEN
INSERT INTO `bd_bank`.`tagencies`(`idagencies`,`agencyNumber`,`name`,`address`,`idbank`,`idtdirectorAgencie`)
VALUES (`aidagencies`,`aagencyNumber`,`aname`,`aaddress`,`aidbank`,`aidtdirectorAgencie`);
SELECT 
    MAX(idagencies)
INTO aidagencies FROM
    `bd_bank`.`tagencies`;
ELSE
UPDATE `bd_bank`.`tagencies` 
SET `idagencies`=`aidagencies`,`agencyNumber`=`aagencyNumber`,`name`=`aname`,`address`=`aaddress`,`idbank`=`aidbank`,`idtdirectorAgencie`=`aidtdirectorAgencie`
WHERE `idagencies`=`aidagencies`;
END IF;
END