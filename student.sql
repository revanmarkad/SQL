create database college;

use college;

create table student(
id int primary key,
name varchar(50),
age int not null
);

insert into student values(1,'sachin',32);
insert into student values(2,'pankaj',22);
insert into student values(3,'Arun',42);
insert into student values(4,'mohit',26);

select * from student;