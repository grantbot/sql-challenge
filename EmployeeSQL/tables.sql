-- creating titles set title_id as primary key
create table titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	primary key (title_id)
);

-- creating employees table with primary key and foreign key referencing title_id

create table employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date DATE NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

Create Table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);

create table departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	primary key (dept_no)
);

create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	primary key (dept_no, emp_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);





