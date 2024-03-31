# medium
SELECT 
	ROUND((COUNT(a2.player_id)/COUNT(a1.player_id)),2) AS fraction
FROM 
	activity a1 
LEFT OUTER JOIN 
	activity a2 
ON 
	a2.player_id=a1.player_id 
AND 
	a2.event_date-a1.event_date=1
WHERE 
	(a1.player_id, a1.event_date) IN (SELECT player_id, MIN(event_date) 
FROM 
	activity 
GROUP BY 
	player_id)