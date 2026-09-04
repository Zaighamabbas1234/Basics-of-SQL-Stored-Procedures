create database college;

use college;

create table student
(
id int primary key,
name varchar(50),
age int not null
);

insert into student values (1, "Zaigham Abbas", 18);
insert into student values (2, "Muhammad Ayyan", 20);

drop table if exists student;
drop database if exists college;