-- Get all business tenants
SELECT * from Business;

-- Get all business tenants with their parent business
SELECT b.ID,
	b.BusinessLegalName,
    b.CountryID,
    b.CurrencyID,
    b.CountryLanguageID,
    b.TimezoneID,
    p.BusinessLegalName
from Business b
LEFT JOIN Business p
	ON p.ID = b.ParentBusinessID;

-- Correct empty Currencies
UPDATE Business
SET CurrencyID = "USD.USA"
WHERE CurrencyID IS NULL;

-- Correct empty Countries
UPDATE Business
SET CountryID = "USA"
WHERE CountryID IS NULL;

-- Correct empty Timezones
UPDATE Business
SET TimezoneID = "America/Bogota"
WHERE TimezoneID IS NULL;

-- Correct empty Languages
UPDATE Business
SET CountryLanguageID = "en"
WHERE CountryLanguageID IS NULL;

-- Get Enrollments Count per Business
SELECT b.ID, b.BusinessLegalName, COUNT(e.ID)
FROM Business b
JOIN BusinessProfileRecord e
	ON b.ID = e.BusinessID
GROUP BY b.ID
ORDER BY COUNT(e.ID) DESC;

-- Get Contacts Count per Business
SELECT b.ID, b.BusinessLegalName, COUNT(c.ID)
FROM Business b
JOIN Contact c
	ON b.ID = c.BusinessID
GROUP BY b.ID
ORDER BY COUNT(c.ID) DESC;

