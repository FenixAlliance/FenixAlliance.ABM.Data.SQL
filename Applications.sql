-- Get all the application authorizations per User
SELECT *
FROM openiddictentityframeworkcoreauthorization;

SELECT u.Email, auth.*
FROM openiddictentityframeworkcoreauthorization auth
JOIN aspnetusers u
	ON u.Id = auth.Subject;
 
 -- Get all OAuth Applicatrions
 SELECT *
FROM openiddictentityframeworkcoreapplication;

 -- Get all OAuth Applicatrion Tokens
 SELECT *
FROM openiddictentityframeworkcoretoken;

 -- Get all OAuth Application Scopes
 SELECT *
FROM openiddictentityframeworkcorescope;