SELECT employees.emp_no,
  employees.first_name,
  employees.last_name,
  employees.sex,
  salaries.salary
FROM employees
Right JOIN salaries ON
salaries.emp_no = employees.emp_no;


select first_name,
last_name,
hire_date
from employees
where hire_date between '01/01/1986' and '12/31/1986'

SELECT employees.emp_no,
  employees.first_name,
  employees.last_name,
  departments.dept_no,
  departments.dept_name
FROM employees
Inner JOIN dept_manager ON
dept_manager.emp_no = employees.emp_no
Inner Join Departments On
departments.dept_no = dept_manager.dept_no

SELECT employees.emp_title,
  employees.first_name,
  employees.last_name,
  departments.dept_name
FROM employees
Inner Join dept_emp On
dept_emp.emp_no = employees.emp_no
Inner JOIN departments On
departments.dept_no = dept_emp.dept_no;

select first_name,
last_name,
sex
from employees
where first_name ='Hercules' and last_name  ~'B'=True

SELECT employees.emp_title,
  employees.first_name,
  employees.last_name,
  departments.dept_name
FROM employees
Inner Join dept_emp On
dept_emp.emp_no = employees.emp_no
Inner JOIN departments On
departments.dept_no = dept_emp.dept_no
Where dept_name = 'Sales'

SELECT employees.emp_title,
  employees.first_name,
  employees.last_name,
  employees.emp_no,
 departments.dept_no,
 departments.dept_name
FROM employees
Inner Join dept_emp On
dept_emp.emp_no = employees.emp_no
Inner JOIN departments On
departments.dept_no = dept_emp.dept_no
Where dept_name = 'Sales' or dept_name = 'Development'



Select last_name,
Count(last_name)
from employees
group by last_name
order by last_name desc;