-- Get all Blog Posts with their respective Business
SELECT 
	b.BusinessLegalName AS BUSINESS, 
	wp.Title as PORTAL_TITLE, 
	wc.Type,
    wc.Title,
    wc.FeaturedImageURL,
    wc.HighlightImage,
    wc.*
FROM WebContent wc
JOIN business b
	ON wc.BusinessID = b.ID
JOIN webportal wp
	ON wp.ID = wc.WebPortalID;

-- Set Featured Image to Highlighed Image  where not exists
UPDATE WebContent
SET FeaturedImageURL = HighlightImage
WHERE FeaturedImageURL IS NULL;

-- Set Highlighed Image to Featured Image where not exists
UPDATE WebContent
SET HighlightImage = FeaturedImageURL 
WHERE HighlightImage IS NULL;