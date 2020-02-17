use northwind;
select * from employees;
select city,count(*) num from employees group by city having count(*) >=2;
select city,count(*) num from employees where title='Sales Representative' group by city having num >=2;
select city from employees group by city;
select distinct city from employees;
select count(distinct city) from employees;