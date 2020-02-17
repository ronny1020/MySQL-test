use northwind;
show tables;
desc employees;
select* from employees;
select title,firstname, lastname from employees order by Title , firstname;
select firstname, lastname from employees where title <>'Sales Representative';
select firstname, lastname from employees where title NOT IN ('Sales Representative');
select * from employees where region is null;
select * from employees where lastname >='n';
