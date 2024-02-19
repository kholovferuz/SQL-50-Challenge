# easy
SELECT
	2.id
FROM 
	weather w1 
JOIN 
	weather w2
ON 
	w2.recorddate-w1.recorddate=1
AND 
	w2.temperature>w1.temperature