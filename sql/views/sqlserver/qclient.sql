SELECT * FROM  qclient
DROP VIEW  qclient

USE bd_bank
GO

CREATE VIEW qclient
AS
SELECT 
a.idclient AS Id,
concat(a.name,' ', a.lastName ) AS Client,
a.clientNumber AS [Client code], 
a.email AS [E-mail], 
a.img AS Picture, 
a.address AS Address, 
a.cardNumber AS [Card code], 
a.nip AS Nip, 
c.accountType AS Account, 
d.number AS [Number code], 
d.balance AS Balance, 
d.openDate AS [Open date], 
c.comission AS Comission, 
c.overdraft AS Overdraft, 
c.interestRate AS Interest,
e.agencyNumber AS [No. Agency],
e.name AS Agency,
e.address AS [Addr. Agency],
CONCAT (f.name,' ', f.lastName) AS Employee,
f.email AS [Mail],
f.img AS Image
FROM tclient a INNER JOIN tclient_account b ON a.idclient = b.idclient
               INNER JOIN taccounttype c ON b.idaccounttype = c.idaccounttype
               INNER JOIN taccount d ON b.idaccount = d.idaccount
               INNER JOIN tagencies	e ON a.idagencies = e.idagencies
               INNER JOIN temployee f on a.idemployee = f.idemployee
			   GO
		   
			