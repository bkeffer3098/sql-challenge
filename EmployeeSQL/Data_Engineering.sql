Drop Table departments;
Drop Table dept_emp;
Drop table dept_manager;

CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);
Select * from titles;

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);
Select * from employees;

CREATE TABLE departments (
    dept_no VARCHAR(4)   NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
    PRIMARY KEY (dept_no)
);
Select * from departments;

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
	Foreign Key (emp_no) references employees(emp_no)
);
Select * from dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no INT   NOT NULL,
	Foreign Key (dept_no) references departments(dept_no)
);
Select * from dept_manager;

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (emp_no)
);
Select * from salaries;

