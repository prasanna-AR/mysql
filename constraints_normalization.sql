-- sql_constraints
create database emp10;
use emp10;
create table employee
(
  id INT primary key auto_increment,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  department varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  contanct_no varchar(50),
  salary decimal(10,2) default 0.00,
  hire_data date
);
insert into employee (first_name,last_name,department,country,email,contanct_no,salary,hire_data)
values
    ('prasanna','R','cse','tamilnadu','prasanna200310@gamil.com','6369557722',600000.00,'2003-10-21'),
	 ('sridhar','r','cse','tamilnadu','sridhar123','6356789023',70000.00,'2004-01-21');

drop table employee;

-- normalization, 1NF, 2NF,

create table department(
id int primary key auto_increment,
name varchar(50) not null
);
insert into department (name) 
values
('cse'),
('mech'),
('civil'),
('eee'),
('ece');
select * from department;
create table country(
id int primary key auto_increment,
country varchar(50) not null,
short_name char(3) not null
);
insert into country (country,short_name) 
values
('india','ind'),
('unitied state','usa'),
('russia','ria'),
('salem','slm'),
('dharmapuri','dpi');

create table employee
(
  id INT primary key auto_increment,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  landline varchar(50),
  mobile varchar(50),
  salary decimal(10,2) default 0.00,
  department int NOT NULL,
  department_id int not null,
  foreign key (department_id) references department(id),
  country int  NOT NULL,
  country_id int not null,
  foreign key (country_id) references country(id),
  hire_data date
);
select * from employee;
show tables;
-- 1NF,2NF;
insert into employee (first_name,last_name,email,landline,mobile,salary,department,country,department_id,country_id,hire_data)
values
    ('prasanna','R','prasanna200310@gamil.com','6369557722','76543455656',600000.00,'cse','tamilnadu',1,1,'2003-10-21'),
	 ('sridhar','r','sridhar123','6356789023','35465464543',70000.00,'cse','tamilnadu',1,1,'2004-01-21');

-- 3NF normalization

alter table employee drop column department, drop column country;
select * from employee;

  