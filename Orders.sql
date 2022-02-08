-- Get orders Data
SELECT u.Email, b.BusinessLegalName, o.* 
FROM absuite_prod.Order o
JOIN aspnetusers u
	ON o.AccountHolderID = u.Id
JOIN Business b
	ON b.ID = o.BusinessID;
    
SELECT * FROM absuite_prod.Order;

-- Fix Empty Order Titles
UPDATE absuite_prod.Order
SET Title = ""
WHERE Title IS NULL;

-- Fix Empty Order Descriptions
UPDATE absuite_prod.Order
SET Description = ""
WHERE Description IS NULL;