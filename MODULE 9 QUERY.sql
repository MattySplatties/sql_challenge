--First Analysis
CREATE VIEW firsttable AS
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON
salaries.emp_no = employees.emp_no;

SELECT *
FROM firsttable
ORDER BY emp_no;

--Second Analysis
CREATE VIEW secondtable AS
SELECT employees.first_name,employees.last_name,employees.hire_date
FROM employees;

SELECT *
FROM secondtable
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01'
ORDER BY hire_date

--Third Analysis
CREATE VIEW thirdtable AS
SELECT dept_manager.dept_no, departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name
FROM dept_manager
JOIN departments ON
departments.dept_no = dept_manager.dept_no
JOIN employees ON
employees.emp_no = dept_manager.emp_no;

SELECT *
FROM thirdtable;

--Fourth Analysis
CREATE VIEW forthtable AS
SELECT departments.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
JOIN dept_emp ON
dept_emp.dept_no = departments.dept_no
JOIN employees ON
employees.emp_no = dept_emp.emp_no;

SELECT *
FROM forthtable;

--Fith Analysis
CREATE VIEW fifthtable AS
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE'B%';


SELECT *
FROM fifthtable;

--Sixth Analysis
CREATE VIEW sixthtable AS
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007';

SELECT *
FROM sixthtable;

--Seventh Analysis
CREATE VIEW seventhtable AS
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

SELECT *
FROM seventhtable;

--Eigth Analysis
CREATE VIEW eigthtable AS
SELECT employees.last_name, COUNT(employees.last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;

SELECT *
FROM eigthtable;