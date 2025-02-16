create database emp11;
show databases;
use emp11;
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
select * from employee;
show databases;
use emp11;
select * from employee;
insert into employee (id,first_name,last_name,department,country,email,contanct_no,salary,hire_data)
values(1,'prasanna','R','cse','tamilnadu','prasanna200310@gamil.com','6369557722',600000.00,'2003-10-21');
insert into employee (id,first_name,last_name,department,country,email,contanct_no,salary,hire_data)
values
     (1,'prasanna','R','cse','tamilnadu','prasanna200310@gamil.com','6369557722',600000.00,'2003-10-21'),
	 (2,'sridhar','r','cse','tamilnadu','sridhar123','6356789023',70000.00,'2004-01-21');
use emp11;
update employee set department='mech' where id=2;
select * from employee;
delete FROM employee where id=2;
select * from employee;