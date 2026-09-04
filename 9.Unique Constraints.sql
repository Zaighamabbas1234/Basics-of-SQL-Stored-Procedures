Create database if not exists Z;

use Z;

create table Y
(
id int unique
);

insert into Y(id) values (1),(2),(3);
insert into Y(id) values (3),(4),(5);

select * from Y;

drop table if exists Y;
drop database if exists Z;
