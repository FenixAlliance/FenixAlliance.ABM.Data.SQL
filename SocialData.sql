SELECT COUNT(*)
FROM SocialProfile sp;

SELECT COUNT(*)
FROM SocialFeed sp;

-- Get Holders with their Social Profile
SELECT u.ID, u.Email, sp.* 
FROM SocialProfile sp
RIGHT JOIN aspnetusers u
	ON sp.AccountHolderID = u.Id
ORDER BY sp.ID;
    
-- Get Holders with their Social Feed
SELECT  u.email as EMAIL, sp.id as SOCIAL_PROFILE_ID, sf.id as SOCIAL_FEED_ID
FROM SocialProfile sp
JOIN aspnetusers u
	ON sp.AccountHolderID = u.Id
LEFT OUTER JOIN SocialFeed sf
	ON sf.SocialProfileID = sp.ID
ORDER BY sp.ID;

-- Get Business Tenants with their Social Feed
SELECT  b.BusinessLegalName as BUSINESS_NAME, sp.id as SOCIAL_PROFILE_ID, sf.id as SOCIAL_FEED_ID
FROM SocialProfile sp
JOIN business b
	ON sp.BusinessID = b.Id
LEFT OUTER JOIN SocialFeed sf
	ON sf.SocialProfileID = sp.ID
ORDER BY sp.ID;
    
-- Get Holders with their Cart
SELECT u.ID, u.Email, sp.* 
FROM Cart sp
RIGHT JOIN aspnetusers u
	ON sp.AccountHolderID = u.Id
ORDER BY sp.ID;

-- Get Holders with their Wallet
SELECT u.ID, u.Email, sp.* 
FROM WalletAccount sp
RIGHT JOIN aspnetusers u
	ON sp.AccountHolderID = u.Id
ORDER BY sp.ID;

-- Get Social Posts
SELECT *
FROM socialpost;

-- Get Social Post Reactions
SELECT *
FROM socialreaction;
    
    -- Get Social Posts
SELECT *
FROM socialcomment;