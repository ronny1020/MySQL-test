create database mytest2;
use mytest2;

-- 交易機制
create table tb1(id int, f1 varchar(10));
create table tb2(id int, f1 varchar(10));
show tables;

insert into tb1 value(1,'A');
insert into tb2 value(1,'A');

select* from tb1;
select* from tb2;

show variables like '%commit%';  
-- autocommit=? 
set autocommit=0 ;
set autocommit=1 ;

update tb1 set f1='B' where id=1;
update tb2 set f1='B' where id=1;

rollback;
commit;

delimiter $$
select * from tb1$$
select * from tb2$$
select * from tb1$$

delimiter ;
select * from tb1;

-- trigger 
create trigger mytrigger1 after insert on tb1
for each row
begin 
insert into tb2 values (2, NEW.f1 );

endtb1tb1
$$