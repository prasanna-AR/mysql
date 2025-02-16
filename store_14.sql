create database emp_14;
use emp_14;
create table employee
(
id int,
frist_name varchar(50),
last_name varchar(50),
contact_no varchar(50),
salary decimal(10,2),
hire_date date
);
insert into employee (id,frist_name,last_name,contact_no,salary,hire_date)
values 
(1,'prasanna','r','6369557722',2233834.78,'2003-10-21');

-- select------------------------------------------------------------------------------------
delimiter //
create procedure selectemployeebyid(
in p_id int
)
begin
select * from employee where id=p_id;
end //
delimiter ;

call selectemployeebyid(1);

-- insert---------------------------------------------
delimiter //
create procedure employeepd(
in p_id int, in p_frist_name varchar(50), in p_last_name varchar(50), in p_contact_no varchar(50),in p_salary decimal(10,2), in p_hire_date date)
begin
insert into employee (id,frist_name,last_name,contact_no,salary, hire_date)
values (p_id,p_frist_name,p_last_name,p_contact_no,p_salary, p_hire_date);
end //
delimiter ;
drop procedure employeepd;

call employeepd(1,'prasanna','r','6369557722',2233834.78,'2003-10-21');