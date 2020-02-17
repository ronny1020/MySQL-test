use northwind;
select * from orders; 
select CustomerID, count(*) num from orders group by CustomerID order by num ;
select * from orders where CustomerID='TOMSP'; 
select CustomerID,Freight,round(Freight,1),round(Freight,0),round(Freight,-1) from orders; 


select '77ewffw2e'+3;     -- 80
select 'fds77ewffw2e'+3;  -- 3

select * from products;
select productname, concat('$',unitprice) uprice from products;

select * from employees;
select FirstName, BirthDate, HireDate, year(HireDate)-year(BirthDate) "hired age" ,datediff(HireDate , BirthDate)/365 from employees;

select datediff(HireDate , BirthDate)/365 from employees;
select monthname(BirthDate) from employees;

select customerid from orders where OrderID = 10290;
select companyname from customers where customerid = 'COMMI';

select companyname from customers where customerid = 
(select customerid from orders where OrderID = 10290);

select customerid, OrderDate from orders 
where orderdate between '1997-01-01' and '1997-12-31'
group by customerid;

select companyname from customers where customerid in (
select customerid from orders 
where orderdate between '1997-01-01' and '1997-12-31'
group by customerid
) order by CompanyName;

select * from suppliers;
select supplierid from suppliers where CompanyName='Tokyo Traders';
select productname ,supplierid from products where supplierid=4;
select productname ,supplierid from products where supplierid=
(select supplierid from suppliers where CompanyName='Tokyo Traders');
select productname ,supplierid from products where supplierid in
(select supplierid from suppliers where CompanyName in 
( 'Tokyo Traders','Pavlova, Ltd.','Heli Suswaren GmbH & Co. KG'));




