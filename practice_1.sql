create database pra;
use pra;
drop table pra;
create table pra
(
id int,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
country varchar(50),
email varchar(50),
salary int,
hire_data datetime 
);
select * from pra;
insert into pra (id,first_name,last_name,department,country,email,salary)
values(1,'prasanna','r','cse','tamilnadu','prasanna2343',233443);
update pra set department = 'HR' where id=1;
delete from pra where salary=233443;
update pra set first_name='ramya' where id=1;
