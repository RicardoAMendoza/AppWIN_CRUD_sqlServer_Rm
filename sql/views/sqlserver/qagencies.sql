SELECT * FROM qagencies
DROP VIEW  qagencies

USE bd_bank
GO					 			 
CREATE VIEW qagencies
AS
SELECT 
a.idagencies AS Id,
a.name AS Agency,
a.agencyNumber AS [No. Agency],
a.address AS [Addr. Agency],
CONCAT(b.name,' ', b.lastName) AS Director,
b.email AS [E-mail],
b.img AS Picture,
b.Salary As '$$$$$$'
FROM tagencies a INNER JOIN tdirectorAgencie b ON a.idtdirectorAgencie = b.idtdirectorAgencie
