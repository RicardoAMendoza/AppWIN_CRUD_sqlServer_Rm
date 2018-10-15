SELECT * FROM qemployee
DROP VIEW  qemployee

USE bd_bank
GO					 
CREATE VIEW qemployee
AS
SELECT	
a.idemployee AS Id,
CONCAT(a.name,' ', a.lastName) AS Employee,
a.employeeNumber AS [No. Employee],
a.img AS Picture,
a.email AS [E-mail],
a.hiringDate AS [Hiring Data],
b.name AS Agency,
b.agencyNumber AS [No. Agency],
b.address AS [Addr. Agency],
c.description AS Departement,
c.codearea AS Code
FROM temployee a INNER JOIN tagencies b ON a.idagencies =b.idagencies
                 INNER JOIN temploy_area d ON a.idemployee = d.idemployee
                 INNER JOIN tarea c ON d.codearea = c.codearea