-- Write a MySQL query to insert rows into the table employees in which a set of columns department_id and manager_id contains a unique value 
create database countries4;
use countries4;
drop table employees;
create table employees
(
	employees_id int,
    depart_id int unique,
    manager_id int unique,
    job_id int 
);
insert into employees (employees_id,depart_id,manager_id,job_id)
values (1,21,32,43),
		(2,23,34,54);
select * from employees;   



-- 12) Write a MySQL query to insert rows into the table employees in which a set of columns department_id and job_id contains the values which must have exists into the table departments and jobs
drop table employees;

create table departments1
(
	depar_id int primary key
);
insert into departments1 (depar_id)
values (1),
       (2),
       (3);
create table jobs1 
(
	job_id int primary key
);
insert into jobs1 (job_id)
values (6),
	   (4),
       (5);
       
create table employees
(
	employees_id int,
    depar_id int ,
    manager_id int ,
    job_id int,
    foreign key (depar_id) references departments1(depar_id),
    foreign key (job_id) references jobs1 (job_id)
);
insert into employees (employees_id,depar_id,manager_id,job_id)
values (7,1,23,6),
		(8,2,34,4),
        (9,3,45,5);
select * from employees;



-- 13) Write a MySQL query to insert rows in the job_history table in which one column job_id is containing those values which are exists in job_id column of jobs table.

create table job_history
(
	employee_id int unique,
    start_date date,
    end_date date,
    job_id int,
    department_id int,
    foreign key (job_id) references jobs1(job_id)
);
INSERT INTO job_history (employee_id, start_date, end_date,job_id,department_id)
VALUES 
    (1,'2004-10-21','2004-10-30',4,101),
    (2,'2004-11-21','2004-11-30',5,102);
select * from job_history;
     
        
        
