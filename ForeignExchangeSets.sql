SELECT * FROM foreignexchangeset order by  year, month, day ;

SELECT COUNT(*) 
FROM foreignexchangeset ;


SELECT Year, COUNT(*) 
FROM foreignexchangeset 
GROUP BY YEAR;