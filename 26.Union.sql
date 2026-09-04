create database if not exists software;

use software;

create table student
(
student_id int,
primary key (student_id),

name varchar(20) not null,
manager_id int
);

create table course
(
manager_id int,
primary key (manager_id),

course varchar(20) not null
);

insert into student
(student_id, name, manager_id)
values
(101, "adam", 101),
(102, "bob", 102),
(103, "casey", null),
(104, "casey", 104);

insert into course
(manager_id, course)
values
(101, "english"),
(102, "math"),
(103, "math"),
(104, "computer science");

select * from student;
select * from course;

-- Union
select course from course
union
select course from course;

-- Union all
select course from course
union all
select course from course;

drop database if exists software;