SELECT * FROM  qclient_account WHERE Account = 'UnPaidAccount'
DROP VIEW  qclient_account

CREATE VIEW qclient_account
AS
SELECT 
dbo.tclient.idclient AS Id,
concat(dbo.tclient.name,' ', dbo.tclient.lastName ) AS Client,
dbo.tclient.clientNumber AS [Client code], 
dbo.tclient.email AS [E-mail], 
dbo.tclient.img AS Picture, 
dbo.tclient.address AS Address, 
dbo.tclient.cardNumber AS [Card code], 
dbo.tclient.nip AS Nip, 
dbo.taccounttype.accountType AS Account, 
dbo.taccount.number AS [Number code], 
dbo.taccount.balance AS Balance, 
dbo.taccount.openDate AS [Open date], 
dbo.taccounttype.comission AS Comission, 
dbo.taccounttype.overdraft AS Overdraft, 
dbo.taccounttype.interestRate AS Interest
FROM dbo.tclient_account INNER JOIN dbo.taccounttype ON dbo.tclient_account.idaccounttype = dbo.taccounttype.idaccounttype 
                         INNER JOIN dbo.taccount ON dbo.tclient_account.idaccount = dbo.taccount.idaccount 
						 INNER JOIN dbo.tclient ON dbo.tclient_account.idclient = dbo.tclient.idclient 
						 ORDER BY No ASC