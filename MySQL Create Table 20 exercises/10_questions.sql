 -- MySQL Create Table [20 exercises] 
 -- 1) Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id.
 create database countries;
 use countries;
 create table countries
 (
   country_id int,
   country_name varchar(50),
   region_id int
 );
 select * from countries;
 
 
 
 -- 2)  Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id which is already exists.
 
 insert into countries (country_id,country_name,region_id)
 values(1,'india',1),
		(2,'goa',2),
        (3,'rassia',3);
select * from countries; 



-- 3) Write a MySQL query to create the structure of a table dup_countries similar to countries.

create table dup_countries like countries;
select * from dup_countries;    



-- 4)  Write a MySQL query to create a duplicate copy of countries table including structure and data by name dup_countries.

insert into dup_countries select * from countries;
select * from dup_countries; 



-- 5) Write a MySQL query to create a table countries1 set a constraint NULL.
drop table countries1;
create table countries1
(
  country_id int null,
  country_name varchar(50) null,
  region_id int null
);
insert into countries1 (country_id,country_name)
values (1,'tamil'),
	   (2,'nadu');
select * from countries1;




-- 6) Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.
create table jobs
(
  job_id int ,
  job_litle varchar(50),
  min_salary varchar(1000),
  max_salary varchar(2000)
);

insert into jobs (job_id,job_litle,min_salary,max_salary)
values (1,'zoho','500','2000'),
	   (2,'aws','600','1000'),
	   (3,'google','750','400'),
       (4,'microsoft','700','1400');
       
select * from jobs;
select * from jobs
where max_salary>1500;


-- 7)Write a MySQL query to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.

drop table countries;
CREATE TABLE countries (
    country_id INT ,
    country_name VARCHAR(50) ,
    region_id INT,
    CHECK (country_name IN ('Italy', 'India', 'China'))
);
INSERT INTO countries (country_id, country_name, region_id)
VALUES 
    (1, 'India', 1),
    (2, 'Italy', 2),
    (3, 'China', 3);
    
-- 8)Write a MySQL query to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

create table job_histry
(
	employee_id int,
    start_date date,
    end_date date,
    job_id varchar(50),
    department_id int
);
INSERT INTO job_histry (employee_id, start_date, end_date, job_id, department_id)
VALUES 
    (1, STR_TO_DATE('01/02/2023', '%d/%m/%Y'), STR_TO_DATE('10/12/2023', '%d/%m/%Y'), 'DEV123', 101),
    (2, STR_TO_DATE('05/06/2022', '%d/%m/%Y'), STR_TO_DATE('15/11/2023', '%d/%m/%Y'), 'HR456', 102);
    
-- 9) Write a MySQL query to create a table named countries including columns country_id,country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion.

drop table countries;
CREATE TABLE countries (
    country_id INT unique,
    country_name VARCHAR(50) unique,
    region_id INT unique
);
INSERT INTO countries (country_id, country_name, region_id)
VALUES 
    (1, 'India', 1),
    (2, 'Italy', 2),
    (3, 'rissa', 3);



-- 10) Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.
drop table jobs;
create table jobs
(
	job_id int ,
    job_title varchar(50) default ('blank'),
    min_salary varchar(50) default (8000),
    max_salary varchar(50) null
);
insert into jobs (job_id)
values (1),
       (2);
select * from jobs;

