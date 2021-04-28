SELECT lab_week6.employee.FIRST_NAME, lab_week6.employee.LAST_NAME, lab_week6.department.NAME 
FROM lab_week6.employee INNER JOIN lab_week6.department
ON lab_week6.employee.DEPT_ID = lab_week6.department.DEPT_ID
WHERE lab_week6.department.NAME = 'Operations';

SELECT lab_week6.officer.FIRST_NAME, lab_week6.individual.FIRST_NAME
FROM lab_week6.officer INNER JOIN lab_week6.customer INNER JOIN lab_week6.individual
ON lab_week6.officer.CUST_ID = lab_week6.customer.CUST_ID AND lab_week6.individual.CUST_ID = lab_week6.customer.CUST_ID;

SELECT a.EMP_ID, a.FIRST_NAME, a.LAST_NAME, b.FIRST_NAME, b.LAST_NAME
FROM lab_week6.employee a LEFT JOIN lab_week6.employee b
ON a.SUPERIOR_EMP_ID = b.EMP_ID
LIMIT 5;
