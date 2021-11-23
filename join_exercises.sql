# CREATE DATABASE IF NOT EXISTS join_test_db;
# USE join_test_db;
#
# CREATE TABLE roles (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# email VARCHAR(100) NOT NULL,
# role_id INT UNSIGNED DEFAULT NULL,
# PRIMARY KEY (id),
# FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', null);
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(n.first_name, ' ', n.last_name) AS Department_Manager
FROM departments AS d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees n on dm.emp_no = n.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY Department_Name;

SELECT d.dept_name AS 'Department Name', CONCAT(n.first_name, ' ', n.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees n ON dm.emp_no = n.emp_no
WHERE n.gender = 'F' AND dm.to_date LIKE '9999%'
ORDER BY dept_name;

SELECT t.title AS Title, COUNT(e.emp_no) AS Total
FROM titles AS t
JOIN employees e ON t.emp_no = e.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date LIKE '9999%' AND de.to_date LIKE '9999%' AND dept_name = 'Customer Service'
GROUP BY Title;

SELECT DISTINCT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM departments AS d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
JOIN salaries s on e.emp_no = s.salary
WHERE dm.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
ORDER BY dept_name;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
# FROM employees AS e
# JOIN departments
# JOIN dept_manager dm on e.emp_no = dm.emp_no;



