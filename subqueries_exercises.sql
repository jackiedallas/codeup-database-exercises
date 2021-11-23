USE employees;

SELECT * FROM dept_manager WHERE to_date > NOW();

SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
 SELECT emp_no
 FROM employees
 WHERE hire_date = '1990-10-22'
);