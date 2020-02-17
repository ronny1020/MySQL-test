/*
Index
1. primay key--only ,Not null
2. unique key--only, Could be null
3. non-unique key--Not only
*/


create database myiii;
use myiii;
create table tb1 (id int,f1 varchar(10),primary key(id));
show tables;
desc tb1;
show indexes from tb1;

create table tb2(id int primary key,f1 varchar(10));
show tables;

show indexes from tb2;
desc tb2;
alter table tb2 drop primary key;
 
insert into tb1 value(1,'A');
insert into tb1 value(2,'B');

insert into tb2 value(1,'A');
insert into tb2 value(2,'B');
select* from tb2;