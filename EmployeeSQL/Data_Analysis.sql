-- 1) List the employee number, last name, first name, sex, and salary of each employee.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s on e.emp_no=s.emp_no;

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986
Select first_name, last_name, hire_date
from employees
where extract (year from hire_date) = 1986
Order By hire_date; 

-- 3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dept_manager.dept_no, dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
Join dept_manager on dept_manager.dept_no = departments.dept_no
Join employees on employees.emp_no = dept_manager.emp_no;

-- 4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
Join dept_emp on dept_emp.dept_no = departments.dept_no
Join employees on employees.emp_no = dept_emp.emp_no;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6) List each employee in the Sales department, including their employee number, last name, and first name.
Select dept_name, de.emp_no, e.last_name, e.first_name
from departments d
-- Needed to join the dept_no to have the dept_no in dept_emp match the name
Join dept_emp de on de.dept_no = d.dept_no
Join employees e on e.emp_no = de.emp_no
where dept_name = 'Sales';

-- 7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, dept_name
From departments d
Join dept_emp de on de.dept_no = d.dept_no
Join employees e on e.emp_no = de.emp_no
where dept_name = 'Sales' Or dept_name = 'Development';

-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, Count(last_name) As "Same Last Name"
from employees
Group By last_name
Order by "Same Last Name" DESC;


