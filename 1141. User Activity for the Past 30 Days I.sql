# easy
SELECT 
	TO_CHAR(activity_date,'yyyy-mm-dd') day, 
	COUNT(distinct user_id) active_users
FROM 
	activity
WHERE 
	activity_date BETWEEN '2019-06-28' AND '2019-07-27' 
GROUP BY
	activity_date;
