-- Count All Stock Products per Business
SELECT i.BusinessID,
	b.BusinessLegalName,
    COUNT(*) 
FROM Item i
JOIN Business b
	ON i.BusinessID = b.ID
GROUP BY i.BusinessID;

-- Get all Stock Items (Items) with their respective Business
SELECT b.BusinessLegalName, i.* 
FROM Item i
JOIN Business b
	ON b.ID  = i.BusinessID
ORDER BY i.BusinessID;

-- Get all Stock Items (Items) with their respective Business
SELECT b.BusinessLegalName,
	i.Title,
	i.PrimaryImageURL,
	i.EstimatedRevenueInUSD
FROM Item i
JOIN Business b
	ON b.ID  = i.BusinessID
ORDER BY i.BusinessID;