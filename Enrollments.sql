-- Select all enrollments with it's user and business
SELECT u.Id, u.Email, b.BusinessLegalName, e.*
FROM BusinessProfileRecord e
JOIN aspnetusers u
	ON u.Id = e.AccountHolderID
JOIN Business b
	ON b.ID = e.BusinessID
ORDER BY b.BusinessLegalName;

-- Deselect All Businesses
UPDATE aspnetusers
SET SelectedBusinessID = NULL;