create database emp13;
use emp13;
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
('tamilnadu','ind'),
('unitied state','usa'),
('russia','ria'),
('salem','slm'),
('dharmapuri','dpi');
drop table employee;
create table employee
(
  id INT primary key auto_increment,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  landline varchar(50),
  mobile varchar(50),
  salary decimal(10,2) default 0.00,
  department varchar(50),
  department_id int not null,
  foreign key (department_id) references department(id),
  country varchar(50),
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
 -- inner join    
select first_name,last_name,email,d.id from employee as e inner join department as d on e.id=d.id;

-- left join
select first_name,last_name,email,d.id from employee as e left join department as d on e.id = d.id;

-- right join
select first_name,last_name,email,d.id from employee as e right join department as d on e.id = d.id;

-- cross join 
select first_name,last_name,email,d.id,d.name from employee as e cross join department as d;

-- --------------------------------------------------------------------------------------------
-- inner join
select first_name,last_name,email,landline,mobile,
c.id,c.country,c.short_name,
d.id,d.name
from employee as e 
inner join country as c on e.id = c.id
inner join department as d on e.department =d.name;

-- cross join
select first_name,last_name,email,landline,mobile,
c.id,c.country,c.short_name,
d.id,d.name
from employee as e 
cross join country as c 
cross join department as d ;
-- ---------------------------------------------------
-- distinct
select distinct (department_id) from employee;

-- order 
 select * from employee order by(salary);
 
 -- format 
 select format (salary,0) from employee;
 
 -- ------------------------------------------
 -- view
 create view employeeview as 
 select first_name,last_name,email from employee;
 
 select * from employeeview;