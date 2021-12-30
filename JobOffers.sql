-- Get all Job Offers
SELECT * FROM JobOffer;

-- Get the count of Job Offers per Business
SELECT b.BusinessLegalName AS BUSINESS, 
	COUNT(j.ID) AS JOB_OFFERS_COUNT
FROM JobOffer j
JOIN Business b
	ON j.BusinessID = b.ID
GROUP BY j.BusinessID;

-- Get the count of Job Offer Applications per Job Offer
SELECT j.ID, 
	j.JobTitle AS JOB_TITLE,
	COUNT(ja.ID) AS JOB_OFFER_APPLICANTS_COUNT
FROM JobOffer j
JOIN JobOfferApplication ja
	ON ja.JobOfferID = j.ID
GROUP BY j.ID;
