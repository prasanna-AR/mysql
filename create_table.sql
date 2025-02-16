create database EMPDB;
show databases;
USE	EMPDB;
CREATE TABLE employee
(
id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
country VARCHAR(50),
email VARCHAR(50),
contact_no VARCHAR(50),
salary DECIMAL(10,2),
hire_data DATE
);
SELECT * FROM employee;
DESC employee;