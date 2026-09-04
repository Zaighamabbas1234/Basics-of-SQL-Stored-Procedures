create database if not exists college;
use college;

create table student
(
roll_no int,
primary key (roll_no),
name varchar(20) not null,
marks int not null,
grade varchar(1) not null,
city varchar(20) not null
);

insert into student 
(roll_no, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- Add a column
alter table student
add column age int not null default 19;

select * from student;

-- Drop a column
alter table student
drop column age;

select * from student;

-- Alter table name
alter table student
rename to enemy;

-- Alter column name
alter table enemy
change column city location varchar(20) not null;

select * from enemy;

-- Modify column
alter table enemy
modify location varchar(100) not null;

drop database if exists college;