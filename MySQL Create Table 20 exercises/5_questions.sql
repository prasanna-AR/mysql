-- 11)  Write a MySQL query to create a table named countries including columns country_id, country_name and region_id and make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion.
create database countries2;
use countries2;
create table countries
(
	country_id int primary key unique,
    country_name varchar(50),
    region_id varchar(50)
);
insert into countries (country_id,country_name,region_id)
values 
		(1,'india','1234'),
        (2,'china','2345'),
        (3,'kerala','3456');
select * from countries;    


-- 12) Write a MySQL query to create a table countries including columns country_id, country_name and region_id and make sure that the column country_id will be unique and store an auto incremented value.

drop table countries;
create table countries
(
	country_id int auto_increment unique,
    country_name varchar(50),
    region_id varchar(50)
);
insert into countries (country_name,region_id)
values 
       ('india','123'),
       ('china','345'),
       ('kerala','543');
select * from countries;

-- 13) Write a MySQL query to create a table countries including columns country_id, country_name and region_id and make sure that the combination of columns country_id and region_id will be unique.
show tables;
drop table countries;
create table countries
(
	country_id int auto_increment unique,
    country_name varchar(50),
    region_id int unique,
     PRIMARY KEY (country_id),
    unique (country_id,region_id)
);
insert into countries (country_name,region_id)
values
		('india',1),
        ('china',2),
        ('rissa',3);
select * from countries;



-- 14) Write a MySQL query to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

drop table job_history;
drop table jobs;
create table jobs
(
	job_id int ,
    job_title varchar(50) default ('blank'),
    min_salary varchar(50) default (8000),
    max_salary varchar(50) null
);
insert into jobs (job_id)
values (4),
       (5);
ALTER TABLE jobs ADD PRIMARY KEY (job_id);

create table job_history
(
	employee_id int unique,
    start_date date,
    end_date date,
    job_id int,
    department_id int,
    foreign key (job_id) references jobs(job_id)
);
INSERT INTO job_history (employee_id, start_date, end_date,job_id,department_id)
VALUES 
    (1,'2004-10-21','2004-10-30',4,101),
    (2,'2004-11-21','2004-11-30',5,102);
select * from job_history;



-- 15). Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
 
 create table departments
 (
	id int primary key unique,
    department_name varchar(50)
 );
 insert into departments(id,department_name)
 values
		(1,'cse'),
        (2,'mech');
create table employees
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
    manager_id int unique,
    department_id int unique,
    foreign key (manager_id) references departments(id),
    foreign key (department_id) references departments(id)
);
insert into employees( employee_id, first_name, last_name, email, phone_number ,dob, job_id, salary, commision, manager_id , department_id)
values
       (4,'rose','r','erfetgrt.com','34433456655','2003-10-21',12,12324.0,323,1,1);

