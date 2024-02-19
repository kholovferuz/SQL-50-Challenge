# medium
SELECT 
	user_id, 
	round(avg(
		case when action='confirmed' then 1 else 0 end),2) confirmation_rate
FROM 
	signups 
LEFT JOIN
	confirmations 
USING 
	(user_id)
GROUP BY
	user_id    