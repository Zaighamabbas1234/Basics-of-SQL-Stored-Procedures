create database if not exists Employe;

use employe;

create table Information
(
roll_number int primary key,
name varchar(50),
city varchar(20)
);

insert into Information values (1, "Zaigham Abbas", "Hujra Shah Muqeem");
insert into Information (roll_number, name, city) values (2, "Muhammad Ayyan", "Okara"),(3, "Khadam Hussain", "Renala Khurd"),(4, "Khalida Bibi", "Depalpur"),(5, "Izza Batool", "Islambad");

select * from Information;

drop table if exists Information;
drop database if exists employe;