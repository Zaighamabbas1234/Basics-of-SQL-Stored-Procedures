create database if not exists software;

use software;

create table student
(
student_id int,
primary key (student_id),

name varchar(20) not null
);

create table course
(
student_id int,
primary key (student_id),

course varchar(20) not null
);

insert into student
(student_id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

insert into course
(student_id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

select * from student;
select * from course;

-- Left Exculsive Join
select *
from student
left join course
on student.student_id = course.student_id
where course.student_id is null;

-- Right Exculsive Join
select *
from student
right join course
on student.student_id = course.student_id
where student.student_id is null;

drop database if exists software;