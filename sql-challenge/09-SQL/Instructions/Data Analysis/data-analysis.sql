---- employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE  '%1986';

--3. List the manager of each department with the 
--   following information: department number, department 
--   name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_no, dm.emp_no, e.first_name, e.last_name
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;

----4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' and last_name like ('B%');

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name IN ('Sales','Development');

--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name)
FROM employees 
GROUP BY last_name 
ORDER BY last_name DESC;

