-- Get all payments with their respective business
SELECT b.BusinessLegalName, p.*
FROM Payment p
JOIN Business b
	ON p.BusinessID = b.ID;