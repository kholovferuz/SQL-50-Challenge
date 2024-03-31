# medium
SELECT 
	s.product_id, 
	s.year first_year, 
	quantity, 
	price
FROM 
	sales s 
JOIN 
	product p 
ON 
	s.product_id=p.product_id
WHERE 
	(s.product_id, s.year) IN (SELECT product_id, MIN(year)
                               FROM sales 
                               GROUP BY product_id)