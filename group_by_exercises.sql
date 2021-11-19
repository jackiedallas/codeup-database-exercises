USE employees;

SELECT DISTINCT title AS 'Employee Titles'
FROM titles
GROUP BY title;