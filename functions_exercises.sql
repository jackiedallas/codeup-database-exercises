USE employees;

# PART ONE

# Find employees with the first names irena, vidya, or maya
SELECT *
FROM employees
WHERE first_name IN ('Maya', 'Vidya', 'Irena')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Maya', 'Vidya', 'Irena')
ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name)
AS 'Full Employee Name'
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY last_name LIKE '%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

# SELECT *
# FROM employees
# WHERE (hire_date LIKE '199%')
# AND DATEDIFF(NOW(), hire_date);

SELECT CONCAT(first_name, ' ', last_name, ' = ', DATEDIFF(NOW(), hire_date))
AS 'Days Worked at company by employees from the 90s'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25';



# add a condition to previous query to find everybody with whose names who is also male
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';

# Find all employees whose last name starts or ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE '%e'
   OR last_name LIKE 'e%';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE '%e'
  AND last_name LIKE 'e%';

# find all employees with 'q' in their last name but not 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND
        last_name NOT LIKE '%qu%';




