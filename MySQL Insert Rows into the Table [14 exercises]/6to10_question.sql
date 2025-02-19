-- 6)Write a MySQL query insert rows from country_new table to countries table.

create database countries_19;
use countries_19;
create table country_new
(
	country_id varchar(2),
    country_name varchar(20),
    region_id int
);
insert into country_new (country_id,country_name,region_id)
values
		('c1','india',100),
        ('c2','usa',200),
        ('c3','uk',300);
create table countries4 like country_new;
insert into countries4 select * from country_new;
select * from countries4;



-- 7)Write a MySQL query to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.

create table jobs
(
	job_id int unique,
    job_title varchar(50) default ('blank'),
    min_salary varchar(50) default (8000),
    max_salary varchar(50) null
);
insert into jobs (job_id)
values (4),
       (5);
insert into jobs (job_id)
values (2);
select * from jobs;



-- 8)Write a MySQL query to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table.

create table countries
(
	country_id varchar(2) not null,
    country_name varchar(30) ,
    region_id int not null
);
insert into countries (country_id,country_name,region_id)
values ('c1','chinna',100);
select * from countries;



-- 9)Write a MySQL query to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.
drop table countries;
create table countries 
(
	country_id int  auto_increment unique,
    country_name varchar(30),
    region_id int 
);
insert into countries (country_name,region_id)
values
		('india',100),
        ('china',200),
        ('usa',300);
select * from countries;



-- 10) Write a MySQL query to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.

 drop table countries;
create table countries 
(
	country_id int  auto_increment unique,
    country_name varchar(30) default 'N/A',
    region_id int 
);
insert into countries (region_id)
values
		(100),
        (200),
        (300);
select * from countries;







