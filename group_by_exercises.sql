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

SELECT CONCAT(first_name, ' ', last_name) AS 'Unique Names'
FROM employees
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT DISTINCT last_name AS 'Unique Last names'
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
ORDER BY last_name;


