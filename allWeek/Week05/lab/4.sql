SELECT lab_week6.employee.EMP_ID, lab_week6.employee.FIRST_NAME, lab_week6.employee.TITLE, lab_week6.employee.DEPT_ID
FROM lab_week6.employee
WHERE lab_week6.employee.DEPT_ID = (SELECT lab_week6.department.DEPT_ID 
	FROM lab_week6.department
	WHERE lab_week6.department.NAME = 'Operations');

SELECT lab_week6.department.DEPT_ID 
FROM lab_week6.department
WHERE lab_week6.department.NAME = 'Operations';
