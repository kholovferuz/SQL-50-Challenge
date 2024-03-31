#easy
SELECT 
	contest_id, 
	round((COUNT(r.user_id)/(SELECT count(*) FROM users))*100,2) percentage
FROM 
	register r
GROUP BY
	contest_id
ORDER BY
	percentage desc, 
	contest_id