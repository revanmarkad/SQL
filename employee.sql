create database if not exists employee;
use employee;

create table emp_data(
id int primary key,
name varchar(50),
salary int
);
 
insert into emp_data (id,name,salary)
value
(21,'mangesh',30000),
(43,'Rahul',87653),
(56,'Pramod',39000);

select * from emp_data;