CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_employ_area`(
in aidemployee int(11),
in acodearea varchar(3)
)
BEGIN

/*Ajouter les inserts des tables temploy_area*/
DECLARE valid int;
SELECT 
    COUNT(*)
INTO valid FROM
    temploy_area
WHERE
    codearea = acodearea;

IF valid = 0 THEN
INSERT INTO `bd_bank`.`temploy_area`(`idemployee`,`codearea`)
VALUES (`aidemployee`,`acodearea`);

-- SELECT 
--    MAX(idemployee)
-- INTO aidemployee FROM `bd_bank`.`temploy_area`;
ELSE
-- Update
UPDATE `bd_bank`.`temploy_area` 
SET `idemployee`=`aidemployee`,`codearea`=`acodearea`
WHERE `idemployee`=`aidemployee`;
END IF;
END