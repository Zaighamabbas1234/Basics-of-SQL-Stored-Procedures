create database if not exists XYZ;

use XYZ;

create table Info
(
customer_id int,
primary key (customer_id),
customer_name varchar(20) not null,
customer_location int
);

insert into Info (customer_id, customer_name, customer_location) values (1,"Zaigham Abbas", 1),(2,"Muhammad Ayyan",2);

select * from Info;

create table Info_id
(
customer_location_id int,
primary key (customer_location_id),
customer_location varchar(20) not null,
foreign key (customer_location_id) references info (customer_id)
);

insert into Info_id (customer_location_id, customer_location) values (1,"Okara"),(2,"Hujra");

select * from Info_id;

drop tables if exists Info, Info_id;
drop database if exists XYZ;