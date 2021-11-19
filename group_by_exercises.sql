USE employees;

SELECT DISTINCT title AS 'Employee Titles'
FROM titles
GROUP BY title;

SELECT last_name AS 'Last Names that Start and End with E'
FROM employees
# GROUP BY last_name LIKE 'e%', last_name LIKE '%e'
# ORDER BY last_name;

# GROUP BY last_name LIKE 'e%'
# AND last_name LIKE '%e';
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e'
GROUP BY last_name ORDER BY last_name;


