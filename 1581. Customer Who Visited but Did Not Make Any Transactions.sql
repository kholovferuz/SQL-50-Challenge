# easy
SELECT 
	customer_id, 
	COUNT(*) as count_no_trans
FROM 
	visits  
WHERE 
	visit_id not IN (select visit_id from transactions)
GROUP BY 
	customer_id