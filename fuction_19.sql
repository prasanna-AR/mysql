create database function_19;
use function_19;
create table employee
(
  id INT,
  first_name varchar(50),
  last_name varchar(50),
  department varchar(50),
  country varchar(50),
  email varchar(50),
  contanct_no varchar(50),
  salary decimal(10,2),
  hire_data date
);
insert into employee (id,first_name,last_name,department,country,email,contanct_no,salary,hire_data)
values
     (1,'prasanna','R','cse','tamilnadu','prasanna200310@gamil.com','6369557722',600000.00,'2003-10-21'),
	 (2,'sridhar','r','cse','tamilnadu','sridhar123','6356789023',70000.00,'2004-01-21'),
     (1,'prasanna','R','cse','tamilnadu','prasanna200310@gamil.com','6369557722',600000.00,'2003-10-21');
-- aggregate_function--------------------------------------------------------------------------------------------------

-- count-----------------------------------------------------
select count(*) from employee;

-- sum--------------------------------------------------------
select sum(salary) from employee;

-- min--------------------------------------------------------
select min(salary) from employee;

-- max--------------------------------------------------------
select max(salary) from employee;

-- avgerage---------------------------------------------------
select avg(salary) from employee;

-- date_funnction------------------------------------------------------------------------------------------------------
select date_format(hire_data,'%d-%m-%y')from employee;

select date_format(hire_data,'%m-%d-%y')from employee;

-- math_function------------------------------------------------------------------------------------------

-- round-------------------------------------------------------
select round(salary) from employee;

-- ciel--------------------------------------------------------
select ceil(salary) from employee;

-- floor-------------------------------------------------------
select floor(salary) from employee;

-- group by---------------------------------------------------------------------------------------------------

-- group by----------------------------------------------------
select id,count(*) from employee
group by id;
select * from employee;

