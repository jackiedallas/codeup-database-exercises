USE employees;

# PART ONE

# Find employees with the first names irena, vidya, or maya
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# find all employees whose last name starts with e
SELECT *
FROM employees
WHERE last_name LIKE 'e%';

# find all employees with a q in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# PART TWO

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




