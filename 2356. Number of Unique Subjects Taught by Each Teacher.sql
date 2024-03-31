# easy
SELECT 
	teacher_id, 
	COUNT(distinct subject_id) cnt
FROM 
	teacher
GROUP BY 
	teacher_id