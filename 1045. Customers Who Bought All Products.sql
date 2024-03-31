# medium
SELECT 
	customer_id
FROM 
	(SELECT 
		customer_id, 
		COUNT(unique product_key) cnt
     FROM 
     	customer 
     GROUP BY 
     	customer_id)
WHERE 
	cnt=(SELECT 
			COUNT(product_key)
         FROM 
         	product)