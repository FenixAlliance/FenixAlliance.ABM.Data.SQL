-- Count all Contacts
SELECT COUNT(*) 
FROM Contact;

-- Get all contacts with the Owner Business
SELECT b.BusinessLegalName, c.* 
FROM Contact c
JOIN Business b
	ON b.ID = c.BusinessID;
    
-- Get Contacts Count per Business
SELECT b.ID, b.BusinessLegalName, COUNT(c.ID)
FROM Business b
JOIN Contact c
	ON b.ID = c.BusinessID
GROUP BY b.ID
ORDER BY COUNT(c.ID) DESC;