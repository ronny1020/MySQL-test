create database projdb;
show databases;
use projdb;
show tables;
create table members (id int unsigned primary key auto_increment,
account varchar(20), passwd varchar(256), birthday date);
desc members;

insert into members(account, passwd, birthday) values
('perter','123456','1999-01-02');
select * from members;

create table cart (id int unsigned primary key auto_increment,
memberId int, orderId varchar(20));

alter table students add primary key(cid);
alter table students add unique(cemail);
alter table students add index index1(csex);