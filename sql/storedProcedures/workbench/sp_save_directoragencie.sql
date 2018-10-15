CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_directoragencie`(
in aidtdirectorAgencie int(11),
in aname varchar(45),
in alastName varchar(45),
in aemail varchar(45),
in aimg varchar(45),
in asalary DECIMAL(22,6)

)
BEGIN

IF aidtdirectorAgencie = 0 THEN
INSERT INTO `bd_bank`.`tdirectoragencie`(`idtdirectorAgencie`,`name`,`lastName`,`email`,`img`,`salary`)
VALUES (`aidtdirectorAgencie`,`aname`,`alastName`,`aemail`,`aimg`,`asalary`);
SELECT 
    MAX(idtdirectorAgencie)
INTO aidtdirectorAgencie FROM
    `bd_bank`.`tdirectoragencie`;

ELSE
UPDATE `bd_bank`.`tdirectoragencie` 
SET `idtdirectorAgencie`=`aidtdirectorAgencie`,`name`=`aname`,`lastName`=`alastName`,`email`=`aemail`,`img`=`aimg`,`salary`=`asalary`
WHERE `idtdirectorAgencie`=`aidtdirectorAgencie`;
END IF;
END