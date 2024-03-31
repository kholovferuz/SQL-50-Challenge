/* Write your PL/SQL query statement below */
select 
	MAX(num) num
FROM 
	(SELECT 
			num 
	 FROM 
	 	mynumbers 
      GROUP BY 
      	num
      HAVING 
      	COUNT(num)=1)