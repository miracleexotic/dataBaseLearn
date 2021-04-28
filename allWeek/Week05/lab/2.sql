SELECT lab_week6.officer.FIRST_NAME, lab_week6.officer.LAST_NAME FROM lab_week6.officer
WHERE lab_week6.officer.FIRST_NAME IN 
	(SELECT lab_week6.officer.FIRST_NAME
	FROM lab_week6.officer INNER JOIN lab_week6.customer INNER JOIN lab_week6.individual
	ON lab_week6.officer.CUST_ID = lab_week6.customer.CUST_ID AND lab_week6.individual.CUST_ID = lab_week6.customer.CUST_ID
	WHERE lab_week6.individual.FIRST_NAME = 'James' AND lab_week6.individual.LAST_NAME = 'Hadley');
    
SELECT *
FROM lab_week6.officer INNER JOIN lab_week6.customer INNER JOIN lab_week6.individual
ON lab_week6.officer.CUST_ID = lab_week6.customer.CUST_ID AND lab_week6.individual.CUST_ID = lab_week6.customer.CUST_ID
WHERE lab_week6.individual.FIRST_NAME = 'James' AND lab_week6.individual.LAST_NAME = 'Hadley';
    
    
    