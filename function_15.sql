create database function_15;
use function_15;
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
	 (2,'sridhar','r','cse','tamilnadu','sridhar123','6356789023',70000.00,'2004-01-21');
      
-- functions----------------------------------------------------------------------------------------------

-- string_function----------------------------------------------------------------------

select concat(first_name,'  ',last_name) from employee;

-- upper_case---------------------------------------------------------------------------

select upper(first_name) from employee where id=1;

-- lower_case------------------------------------------------------------------

select substring(first_name,3) from employee;

-- length----------------------------------------------------------------------

select length(concat(first_name,' ',last_name)) from employee;


