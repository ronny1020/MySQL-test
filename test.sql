/*
註解
*/
show databases; 
create database iii;
use class;
select * from students;
use iii;
create table tb1 (f1 int, f2 varchar(10));
use class;
create table iii.tb2 (f1 int, f2 varchar(10));
create table bkclass select * from students;
select * from bkclass;
desc students;
insert into students (cname, cbirthday) value ('Peter','1999-01-02');
insert into students (cname, cbirthday) value ('Peter97698790','1999-01-02');
update students set cname='John',cemail='john@gmail.com' where cid = 12;
update students set cname='Tom' where cid>14;
delete from students where cid=14;
-- select...from...where....group by....having ....order by....limit
select cname,cbirthday,cphone from students;
select * from students where cid<7;
select * from students limit 4;
select * from students limit 2,4;
select 'Hello world';
select 10+3;
select 'Hello',10+3,now();
select cid as '編號',cname as '姓名' from students;
select cid 'no', cname 'Name',cphone from students;
select cid+10 'no', cname 'Name',cphone from students;
select 10%3,10/3,10 div 3;