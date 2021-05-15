create table Titles(
title_id varchar(6) Not Null primary key,
title varchar(30) Not Null);



create table Employees(
emp_no INT primary key,
emp_title varchar(6) Not Null,
birth_date DATE,
first_name VARCHAR(20) Not NUll,
last_name VARCHAR(20) Not Null,
sex VARCHAR(1) Not Null,
hire_date DATE);



Create table Dept_emp( 
emp_no int,
dept_no varchar(6));


select * from dept_emp

alter table Dept_emp
add foreign key(dept_no) references Departments(dept_no)

alter table Dept_emp
add foreign key(emp_no) references Employees(emp_no)




CREATE TABLE Dept_manager(
dept_no varchar(6),
emp_no int);


alter table Dept_manager
add foreign key(dept_no) references Departments(dept_no)

alter table Dept_manager
add foreign key(emp_no) references Employees(emp_no)


create table Salaries(
emp_no INT,
salary int);

alter table Salaries
add foreign key(emp_no) references Employees(emp_no)


