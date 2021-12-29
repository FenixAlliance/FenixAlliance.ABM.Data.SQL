-- Get Account Balances
SELECT 
	b.BusinessLegalName AS "BUSINESS",
	l.Name AS "LEDGER_NAME", 
    a.Name AS "ACCOUNT_NAME", 
	pa.Name AS "PARENT_ACCOUNT_NAME", 
    a.Code,
    CONCAT('$',' ', FORMAT(a.Balance, 2)) AS BALANCE,
    b.CountryID
FROM Account a
JOIN Account pa
	ON a.ParentAccountID = pa.ID
JOIN Business b
	ON a.BusinessID = b.ID
JOIN Ledger l
	ON a.LedgerID = l.ID
LIMIT 1000;