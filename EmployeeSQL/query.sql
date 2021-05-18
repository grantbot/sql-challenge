-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select employees.last_name,
employees.first_name,
employees.hire_date
from employees
where employees.hire_date >= '1/1/1986' and employees.hire_date < '1/1/1987'
order by employees.hire_date;










-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.





-- List the department of each employee with the following information: employee number, last name, first name, and department name.





-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."






-- List all employees in the Sales department, including their employee number, last name, first name, and department name.






-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.






-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.