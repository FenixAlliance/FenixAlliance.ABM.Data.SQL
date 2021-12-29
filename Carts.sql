-- Get all Carts with Product count
SELECT ID, Type, IP FROM Cart ORDER BY Type;

SELECT c.ID, c.Type, COUNT(cr.ID) 
FROM Cart c
LEFT JOIN CartRecord cr
	ON cr.CartID = c.ID
GROUP BY c.ID
ORDER BY COUNT(cr.ID) DESC;

-- Delete all Cart Records
TRUNCATE CartRecord;

-- Count all Guest Carts
SELECT Count(*) FROM Cart
WHERE Type = "GuestCart";

-- Delete all Guest Carts
DELETE FROM Cart
WHERE Type = "GuestCart";
