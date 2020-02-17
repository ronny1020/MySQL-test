use class;
select * from students;
select * from students where cid%2=0;
select * from students where cName like '林%';
select * from students where cAddr like '%三民%' or cAddr like '%中央%';
select * from students where cPhone like '091%';
select * from students where cPhone like '09%5';
select * from students where cPhone like '09_6%';
select * from students order by cid desc;
select * from students order by cname;
select * from students order by cBirthday asc;
/*
desc==>descending 
asc==>ascending 
*/