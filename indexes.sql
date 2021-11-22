USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE salaries;
DESCRIBE titles;

SELECT * FROM employees LIMIT 10;
SELECT * FROM departments LIMIT 10;
SELECT * FROM dept_emp LIMIT 10;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
AND e.emp_no = 10001;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' LIMIT 50;

