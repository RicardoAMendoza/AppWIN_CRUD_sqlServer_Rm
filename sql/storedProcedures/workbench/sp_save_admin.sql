CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_admin`(
in aidadmin int(11),
in aname varchar(45),
in alastName varchar(45),
in aimg varchar(45),
in aemail varchar(45),
in apassword varchar(45)

)
BEGIN

IF aidadmin = 0 THEN
INSERT INTO `bd_bank`.`tadmin`(`idadmin`,`name`,`lastName`,`img`,`email`,`password`)
VALUES (`aidadmin`,`aname`,`alastName`,`aimg`,`aemail`,`apassword`);
SELECT 
    MAX(idadmin)
INTO aidadmin FROM
    `bd_bank`.`tadmin`;

ELSE
UPDATE `bd_bank`.`tadmin` 
SET `idadmin`=`aidadmin`,`name`=`aname`,`lastName`=`alastName`,`img`=`aimg`,`email`=`aemail`,`password`=`apassword`
WHERE `idadmin`=`aidadmin`;
END IF;
END