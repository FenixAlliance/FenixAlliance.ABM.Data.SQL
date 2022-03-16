-- Get all Invoicec with their Business
SELECT b.BusinessLegalName, i.*
FROM Invoice i
JOIN Business b
	ON i.BusinessID = b.ID;
    

SELECT * FROM Invoice ;
SELECT * FROM Invoice WHERE ID = "cba9b1b0-1b03-4cc5-9c16-900709950ceb";

select * from appliedtaxpolicyrecord;

select * from billingitemrecord;

-- Get all Invoices Report
SELECT b.BusinessLegalName,
		CASE WHEN Paid = 0 THEN 'FALSE' ELSE 'TRUE' END "PAID",
		i.Timestamp,
		i.PaymentDue,
		i.TotalTaxesInUSD,
		i.TotalAmountInUSD,
		i.ContactID,
        u.Email
FROM Invoice i
JOIN Business b
	ON i.BusinessID = b.ID
LEFT JOIN aspnetusers u
	ON i.AccountHolderID = u.ID;
    
-- Get all Invoices OverDue Report
SELECT b.BusinessLegalName,
		CASE WHEN Paid = 0 THEN 'FALSE' ELSE 'TRUE' END "PAID",
		i.Timestamp,
		i.PaymentDue,
		i.TotalTaxesInUSD,
		i.TotalAmountInUSD,
		i.ContactID,
        u.Email
FROM Invoice i
JOIN Business b
	ON i.BusinessID = b.ID
LEFT JOIN aspnetusers u
	ON i.AccountHolderID = u.ID
WHERE i.PaymentDue < CURDATE() AND i.Paid = 0;

-- Remove 0 Value Invoices
DELETE FROM Invoice
WHERE TotalAmountInUSD = 0;