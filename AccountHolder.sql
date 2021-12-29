-- Get all the application users
SELECT * FROM aspnetusers
ORDER BY Timestamp;

SELECT Name, LastName, Email, CountryID, CurrencyID, CountryLanguageID, TimezoneID FROM aspnetusers;

-- Correct mismatching emails
UPDATE aspnetusers
SET Email = LOWER(NormalizedEmail)
WHERE Email != NormalizedEmail;

-- Correct empty Countries
UPDATE aspnetusers
SET CountryID = "USA"
WHERE CountryID IS NULL;

-- List all languages
SELECT * from countrylanguage;

-- Correct empty Languages
UPDATE aspnetusers
SET CountryLanguageID = "en"
WHERE CountryLanguageID IS NULL;

-- List all Timezones
SELECT * from timezone;


-- Correct empty Timezones
UPDATE aspnetusers
SET TimezoneID = "America/Bogota"
WHERE TimezoneID IS NULL;


-- Correct empty Currencies
UPDATE aspnetusers
SET CurrencyID = "USD.USA"
WHERE CurrencyID IS NULL;

-- Select all customers with it's enrollment count
SELECT u.Id, u.Email, COUNT(e.ID)
FROM aspnetusers u
LEFT JOIN BusinessProfileRecord e
	ON u.Id = e.AccountHolderID
GROUP BY  u.Email 
ORDER BY COUNT(e.ID) DESC;

-- Get Wallet IDs
SELECT 
	u.Email,
	w.ID AS WalletID
FROM aspnetusers u
LEFT JOIN WalletAccount w
	ON w.AccountHolderID = u.Id;

-- Get an Social Profile IDs
SELECT 
	u.Email,
	sp.ID AS SocialProfileID
FROM aspnetusers u
LEFT JOIN SocialProfile sp
	ON sp.AccountHolderID = u.Id;