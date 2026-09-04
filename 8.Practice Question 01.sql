create database if not exists XYZ;

use XYZ;

create table employe_info
(
id int primary key,
name varchar(50),
salary int default 25000
);

insert into employe_info (id,name,salary) values (1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
insert into employe_info(id,name) values (4,"Abbas");

select * from employe_info;

drop table if exists employe_info;
drop database if exists XYZ;