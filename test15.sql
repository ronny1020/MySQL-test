create database mytest1;
use mytest1;
create table tb1(id int, f1 varchar(10));
create table tb2(id int, f2 varchar(10), tb1id int);
desc tb1;
desc tb2;
insert into tb1 value(1,'A'),(2,'B'),(3,'C');
insert into tb1 value(4,'D');
select * from tb1;
insert into tb2 value(11,'AAA',1),(22,'BBB',2),(333,'CCCC',3);
select * from tb2;

select tb1.id,tb1.f1,tb2.id,tb2.f2,tb2.tb1id
from tb1,tb2
where tb1.id=tb2.tb1id;

select *
from tb1,tb2
where tb1.id=tb2.tb1id;

select *
from tb1
	join tb2 on (tb1.id=tb2.tb1id);
    
select *
from tb1
	left join tb2 on (tb1.id=tb2.tb1id);
    
select *
from tb1
	right join tb2 on (tb1.id=tb2.tb1id);    
    
insert into tb2 values(44,'DDD',7);