# medium
SELECT 
	  TO_CHAR(trans_date,'yyyy-mm') month, country, COUNT(*) trans_count,
      SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) approved_count,
      SUM(amount) trans_total_amount, 
      SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) approved_total_amount
FROM 
	transactions
GROUP BY
	TO_CHAR(trans_date,'yyyy-mm') , 
	country
ORDER BY
	month, 
	country DESC