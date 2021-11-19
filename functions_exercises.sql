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

# find all employees whose last name starts with e
SELECT CONCAT(first_name, ' ', last_name)
AS 'Full Employee Name'
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

# find all employees with a q in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# PART TWO #

# update your query for irena, vidya, and maya to use or instead of in
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

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




