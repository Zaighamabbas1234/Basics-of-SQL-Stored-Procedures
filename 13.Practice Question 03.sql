create database if not exists bank;

use bank;

create table payment
(
customer_id int,
primary key (customer_id),
customer varchar(20) not null,
mode varchar(20) not null,
city varchar(20) not null
);

insert into payment (customer_id, customer, mode, city)
values (101, "Oliva Barrett", "Netbanking", "Portland"),
(102, "Oliva Barrett", "Credit Card", "Miami"),
(103, "Ethan Sinclair", "Credit Card", "Seattle"),
(104, "Maya Hemandez", "Netbanking", "Denver"),
(105, "Liam Donovan", "Credit Card", "New Orleans"),
(106, "Sophia Nguyen", "Debit Card", "Minneapolis"),
(107, "Caleb Foster", "Debit Card", "Phoenix"),
(108, "Ava Patel", "Netbanking", "Boston"),
(109, "Lucas Carter", "Netbanking", "Nashville"),
(110, "Isabella Martinez", "Netbanking", "Boston"),
(111, "Jackson Brocks", "Credit Card", "Portland");
 
 select * from payment;
 
 select mode, count(customer)
 from payment
 group by mode
 order by mode;
 
 drop database if exists bank;