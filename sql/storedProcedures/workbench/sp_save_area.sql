CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_area`(
/*tarea*/
in acodearea varchar(3),
in adescription varchar(45)
)
BEGIN

/*Ajouter les inserts des tables tarea*/
DECLARE valid int;
SELECT 
    COUNT(*)
INTO valid FROM
    tarea
WHERE
    codearea = acodearea;

IF  valid=0  THEN
INSERT INTO `bd_bank`.`tarea`(codearea,description) 
VALUES(acodearea,adescription);
Else
-- Update
	UPDATE `bd_bank`.`tarea`
	SET `description`= `adescription` WHERE `codearea` = acodearea;
end if;
  
END