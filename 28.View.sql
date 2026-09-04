create database if not exists software;

use software;

create table student
(
roll_no int,
primary key (roll_no),

name varchar(20) not null,
marks int not null,
city varchar(20) not null
);

insert into student
(roll_no, name, marks, city)
values
(101, "anil", 78, "Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan", 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

select * from student;

create view demo as
select roll_no,name,marks
from student;

select * from demo;

drop view if exists demo;
drop database if exists software;