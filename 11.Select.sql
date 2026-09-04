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

insert into student (roll_no, name, marks, grade, city) values (101, "anil", 78, "C", "Pune"),(102, "bhumika", 93, "A", "Mumbai"),(103, "chetan", 85, "B", "Mumbai"),(104, "dhruv", 96, "A", "Delhi"),(105, "emanuel", 12, "F", "Delhi"),(106, "farah", 82, "B", "Delhi");

select *
from student;

select name,marks
from student;

select distinct city
from student;

select *
from student
where marks >90;

select *
from student
where city = "Mumbai";

select *
from student
where marks > 80 and city = "Mumbai";

select *
from student
where marks > 80 or city = "Mumbai";

select *
from student
where marks between 80 and 90;

select *
from student
where city in ("Delhi","Mumbai");

select *
from student
where city not in ("Delhi","Mumbai");

select *
from student
where marks +10 > 100;

select *
from student
where marks = 93;  

select *
from student
limit 3;

select *
from student
where marks > 30
limit 3;

select *
from student
order by city asc;

select *
from student
order by marks asc;

select *
from student
order by marks desc
limit 3;

select max(marks)
from student;

select min(marks)
from student;

select avg(marks)
from student;

select count(name)
from student;

select city, count(name)
from student
group by city;

select city, count(roll_no)
from student
group by city;

select city,name, count(roll_no)
from student
group by city,name;

select city, avg(marks)
from student
group by city;

drop table if exists student;
drop database if exists college;