-- 1)Write a MySQL query to insert a record with your own value into the table countries against each columns.
create database countries3;
use countries3;
create table countries_3
(
	COUNTRY_ID  varchar(2),
    COUNTRY_NAME varchar(40), 
    REGION_ID  decimal(10,0)
);
insert into countries_3(COUNTRY_ID,COUNTRY_NAME,REGION_ID)
value
       ('1','INDIA',100.0),
       ('2','RISSA',200.0);
select * from countries_3;



-- 2)Write a MySQL query to insert one row into the table countries against the column country_id and country_name.

drop table countries_3;
create table countries_3
(
	COUNTRY_ID  varchar(2),
    COUNTRY_NAME varchar(40), 
    REGION_ID  decimal(10,0)
);
insert into countries_3(COUNTRY_ID,COUNTRY_NAME)
value ('C1','INDIA');
select * from countries_3;




-- 3) Write a MySQL query to create duplicate of countries table named country_new with all structure and data.

create table country_new like countries_3;
insert into country_new select * from countries_3;
select * from country_new;




-- 4)Write a MySQL query to insert NULL values against region_id column for a row of countries table.

drop table countries_3;
create table countries_3
(
	COUNTRY_ID  varchar(2),
    COUNTRY_NAME varchar(40), 
    REGION_ID  decimal(10,0)
);

insert into countries_3(COUNTRY_ID,COUNTRY_NAME,REGION_ID)
value
       ('1','INDIA',null),
       ('2','RISSA',null);
select * from countries_3;




-- 5)Write a MySQL query to insert 3 rows by a single insert statement.

drop table countries_3;
create table countries_3
(
	COUNTRY_ID  varchar(2),
    COUNTRY_NAME varchar(40), 
    REGION_ID  decimal(10,0)
);

insert into countries_3(COUNTRY_ID,COUNTRY_NAME,REGION_ID)
value
       ('1','INDIA',null),
       ('2','RISSA',null),
       ('3','chinna',null);
select * from countries_3;
