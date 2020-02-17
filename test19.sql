use class;
select* from students;

create view myview1 as select* from students where csex='F';
show tables;
desc myview1;

update myview1 set csex='M' where cid=4;
select* from myview1;

show variables like '%safe%';
SET SQL_SAFE_UPDATES = 0;

insert into students (cid,cname,csex,cbirthday) value (11,'peter','F','1999-01-02');

