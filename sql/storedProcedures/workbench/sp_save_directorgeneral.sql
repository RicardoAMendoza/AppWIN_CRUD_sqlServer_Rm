CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_directorgeneral`(
in aiddirector int(11),
in aname varchar(45),
in alastName varchar(45),
in aimg varchar(45),
in asalary DECIMAL(22,6)
in aidbank int(11)
)
BEGIN

IF aiddirector = 0 THEN
INSERT INTO `bd_bank`.`tdirectorgeneral`(`iddirector`,`name`,`lastName`,`img`,`salary`,`idbank`)
VALUES (`aiddirector`,`aname`,`alastName`,`aimg`,`asalary`,`aidbank`);
SELECT 
    MAX(iddirector)
INTO aiddirector FROM
    `bd_bank`.`tdirectorgeneral`;

ELSE
UPDATE `bd_bank`.`tdirectorgeneral` 
SET `iddirector`=`aiddirector`,`name`=`aname`,`lastName`=`alastName`,`img`=`aimg`,`salary`=`asalary`,`idbank`=`aidbank` 
WHERE `iddirector`=`aiddirector`;
END IF;
END