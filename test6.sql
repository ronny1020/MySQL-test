use northwind;
show tables;
select * from orders;
select orderid, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate
from orders where ShippedDate > RequiredDate;
select concat(firstname,'',lastname) 'fullname' from employees;

select orderid, freight, freight*1.1 'freight Totol' from orders
where freight >= 500;