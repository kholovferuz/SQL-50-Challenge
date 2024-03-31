# easy
SELECT 
	   query_name,
       ROUND(AVG(rating/position),2) quality,
       ROUND(AVG(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100,2) poor_query_percentage
FROM 
	queries
WHERE 
	query_name IS NOT NULL
GROUP BY 
	query_name