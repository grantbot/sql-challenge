-- List the following details of each employee: employee number, last name, first name, sex, and salary.
create view Q1_employee_details as
select employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
create view Q2_hired_in_86 as
select employees.last_name,
employees.first_name,
employees.hire_date
from employees
where employees.hire_date >= '1/1/1986' and employees.hire_date < '1/1/1987'
order by employees.hire_date;


create view Q3_manager_info as
select dept_manager.emp_no, 
	employees.last_name,
	employees.first_name,
	departments.dept_no,
	departments.dept_name
from dept_manager 
	inner join employees 
		on (dept_manager.emp_no = employees.emp_no)
	inner join departments 
		on (dept_manager.dept_no = departments.dept_no)
order by departments.dept_no;


select * 
from Q3_manager_info

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
create view Q4_emp_info as
select e.emp_no, 
	e.last_name,
	e.first_name,
	d.dept_name,
	e.hire_date
from employees as e
	inner join dept_emp as de
		on (e.emp_no = de.emp_no)
	inner join departments as d
		on (de.dept_no = d.dept_no);
		

select *
from Q4_emp_info


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
create view Q5_Hercules as
select last_name,
	first_name,
	sex
from employees
where first_name = 'Hercules'
	and last_name LIKE 'B%';
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
create view Q6_sales_dept_employees as 
select *
from Q4_emp_info
where dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
create view Q7_Sales_and_Dev_employees as
select * 
from Q4_emp_info
where dept_name IN ('Sales', 'Development')
order by dept_name;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
create view Q8_last_name_counts as 
select last_name, count (last_name)
from employees
group by last_name
order by last_name DESC; 





