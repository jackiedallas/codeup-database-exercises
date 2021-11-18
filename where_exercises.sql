USE employees;

# Find employees with the first names irena, vidya, or maya
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# find all employees whose last name starts with e
SELECT *
FROM employees
WHERE last_name LIKE 'e%';





