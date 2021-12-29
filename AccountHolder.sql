-- Correct mismatching emails
UPDATE aspnetusers
SET Email = LOWER(NormalizedEmail)
WHERE Id IN (
	SELECT id FROM aspnetusers WHERE Email != NormalizedEmail
);

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


-- Get all the application users
SELECT Name, LastName, Email, CountryID, CountryLanguageID, TimezoneID FROM aspnetusers;
