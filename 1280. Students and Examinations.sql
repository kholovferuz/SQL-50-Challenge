#easy
SELECT 
		st.student_id, 
        student_name, 
        sub.subject_name, 
        COUNT(ex.subject_name) attended_exams
FROM 
	students st 
CROSS JOIN
	subjects sub
LEFT JOIN
	examinations ex 
ON 
	st.student_id=ex.student_id
AND 
	sub.subject_name=ex.subject_name
GROUP BY
	st.student_id, 
	st.student_name, 
	sub.subject_name
ORDER BY
	st.student_id, 
    student_name