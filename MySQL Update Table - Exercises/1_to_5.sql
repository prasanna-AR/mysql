-- 1)Write a SQL statement to change the email column of employees table with 'not available' for all employees
create database countries21;
use countries21;
create table employee
(
	employee_id int unique,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    dob date,
    job_id int,
    salary decimal(10,0),
    commision int,
    manager_id int,
    department_id int 
);
insert into employee( employee_id, first_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'rose','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,323,1,1),
       (2,'roshan','r','frgtrgtr.com','34433455455','2004-10-21',12,12324.0,323,12,3);
update employee set email="not avaiable";
select * from employee;



-- 2) Write a  SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.
drop table employee;
create table employee
(
	employee_id int unique,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    dob date,
    job_id int,
    salary decimal(10,0),
    commision int,
    manager_id int,
    department_id int 
);
insert into employee( employee_id, first_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'rose','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,323,1,1),
       (2,'roshan','r','frgtrgtr.com','34433455455','2004-10-21',12,12324.0,323,12,3);
update employee set email="not avaiable",commision=0.10;
select * from employee;




-- 3)Write a  SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for those employees whose department_id is 110.
drop table employee;
create table employee
(
	employee_id int unique,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    dob date,
    job_id int,
    salary decimal(10,0),
    commision int,
    manager_id int,
    department_id int 
);
insert into employee( employee_id, first_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'rose','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,323,1,110),
       (2,'roshan','r','frgtrgtr.com','34433455455','2004-10-21',12,12324.0,323,12,110);
update employee set email="not avaiable",commision=0.10 where department_id = 110;
select * from employee;



-- 4) Write a  SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission_pct is less than .20

drop table employee;
create table employee
(
	employee_id int unique,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    dob date,
    job_id int,
    salary decimal(10,0),
    commision int,
    manager_id int,
    department_id int 
);
insert into employee( employee_id, first_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'rose','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,18,1,80),
       (2,'roshan','r','frgtrgtr.com','34433455455','2004-10-21',12,12324.0,19,12,80);
update employee set email="not avaiable" where department_id = 80 and commision < 20;
select * from employee;




-- 5)Write a  SQL statement to change the email column of employees table with 'not available' for those employees who belongs to the 'Accouning' department
drop table employee;
create table employee
(
	employee_id int unique,
    department_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    dob date,
    job_id int,
    salary decimal(10,0),
    commision int,
    manager_id int,
    department_id int 
);
insert into employee( employee_id, department_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'accounting','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,323,1,1),
       (2,'accounting','s','frgtrgtr.com','34433455455','2004-10-21',12,12324.0,323,12,3);
update employee set email="not avaiable" where department_name="accounting";
select * from employee;