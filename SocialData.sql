-- Get Holders with their Social Profile
SELECT u.ID, u.Email, sp.* 
FROM SocialProfile sp
RIGHT JOIN aspnetusers u
	ON sp.AccountHolderID = u.Id
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