-- Get Account Holder Wallets
SELECT u.Email,
	CASE WHEN w.Test = 0 THEN 'TRUE' ELSE  'FALSE'END TEST_MODE,
    CASE WHEN w.EnabledToRecievePayments = 0 THEN 'TRUE'  ELSE 'FALSE' END ENABLED ,
	w.*
FROM WalletAccount w
LEFT JOIN aspnetusers u
	ON w.AccountHolderID = u.Id
WHERE AccountHolderID IS NOT NULL;

-- DISABLE ALL WALLETS
UPDATE walletaccount
SET EnabledToRecievePayments = 0
WHERE ID = "";


-- Get Business Wallets
SELECT b.BusinessLegalName,
	CASE WHEN w.Test = 0 THEN 'FALSE' ELSE 'TRUE' END TEST_MODE,
    CASE WHEN w.EnabledToRecievePayments = 0 THEN 'FALSE' ELSE 'TRUE' END ENABLED ,
	w.*
FROM WalletAccount w
RIGHT JOIN Business b
	ON w.BusinessID = b.Id
WHERE BusinessID IS NOT NULL;

DESCRIBE walletaccount;

-- Get Contact Wallets
SELECT 
	CONCAT(c.Name, ' ',  c.LastName) AS CONTACT_NAME, 
	b.BusinessLegalName AS OWNER_BUSINESS, 
    w.ID AS WALLET_ID,
	CASE WHEN w.Test = 0 THEN 'FALSE' ELSE 'TRUE' END TEST_MODE,
    CASE WHEN w.EnabledToRecievePayments = 0 THEN 'FALSE' ELSE 'TRUE' END ENABLED 
FROM WalletAccount w
JOIN Contact c
	ON  c.ID = w.ContactID
JOIN Business b
	ON b.ID = c.BusinessID
WHERE w.ContactID IS NOT NULL;