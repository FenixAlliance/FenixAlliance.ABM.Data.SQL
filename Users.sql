-- Get all the application users
SELECT * FROM aspnetusers;
SELECT Name, LastName, Email, CountryID, CurrencyID, CountryLanguageID, TimezoneID FROM aspnetusers;

-- Get Users Report
SELECT Id,
	Email,
    Name,
	LastName,
    PhoneNumber,
    AccessFailedCount,
	CASE WHEN TwoFactorEnabled = 0 THEN 'FALSE' ELSE 'TRUE' END "2FA_ENABLED",
	CASE WHEN PhoneNumberConfirmed = 0 THEN 'FALSE' ELSE 'TRUE' END "PHONE_CONFIRMED",
	CASE WHEN LockoutEnabled = 0 AND LockoutEnd > CURDATE() THEN 'TRUE' ELSE  'FALSE'END LOCKED_OUT
FROM aspnetusers
ORDER BY Timestamp;



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

-- Select all Users
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