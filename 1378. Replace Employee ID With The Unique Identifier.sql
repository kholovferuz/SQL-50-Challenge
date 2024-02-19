# easy
SELECT 
	eu.unique_id, 
    emp.name 
FROM 
	Employees emp 
LEFT OUTER JOIN
	EmployeeUNI eu
ON 
	eu.id=emp.id