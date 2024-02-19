# easy
SELECT 
	name, 
	bonus
FROM 
	employee e 
LEFT JOIN
	bonus b
ON
	e.empid=b.empid
WHERE 
	not bonus>=1000 
OR 
	bonus is null