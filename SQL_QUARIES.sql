-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.gender,
		sal.salary
FROM employees as emp
	LEFT JOIN salary as sal
	ON (emp.emp_no = sal.emp_no);
	
-- List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no,
		emp.first_name,
		emp.last_name,
		dept_manager.from_date,
		dept_manager.to_date
FROM dept_mgmt
	INNER JOIN departments
		on (dept_manager.dept_no = departments.dept_no)
	INNER JOIN employees
		on (dept_manager.emp_no = employees.emp_no)
	ORDER BY dept_manager.to_date DESC;
	


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp 
JOIN employees ON 
dept_emp.emp_no = employees.emp_no
JOIN departments ON 
dept_emp.dept_no = departments.dept_no;



--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON 
dept_emp.emp_no = employees.emp_no
JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';



--List all employees in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp 
JOIN employees ON 
dept_emp.emp_no = employees.emp_no
JOIN departments ON 
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';



--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;

