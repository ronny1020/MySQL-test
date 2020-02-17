use northwind;



-- 1 
select o.orderId, e.firstname, c.companyName
from orders o
join employees e on (e.employeeId =o.employeeId)
join customers c on (c.customerId =o.customerId)
order by o.orderId;

-- 2 
select o.orderId, e.firstname, c.companyName
from employees e
join orders o on (e.employeeId =o.employeeId)
join customers c on (c.customerId =o.customerId)
order by o.orderId;

-- 3
select o.orderId, e.firstname, c.companyName
from customers c
join  orders o on (c.customerId =o.customerId)
join employees e on (e.employeeId =o.employeeId)
order by o.orderId;

-- 4 #
-- select...from...where...group by...having...order by...limit
select o.orderId, e.firstname, c.companyName
from orders o, employees e, customers c
where e.employeeId =o.employeeId and c.customerId =o.customerId
order by o.orderId;

select * from `order details`;
select * from customers;
select c.companyName, o.orderid,
od.UnitPrice*od.quantity*(1-od.discount) 'totalPrice'
from `order details` od
join orders o on (o.orderID=od.orderID)
join customers c on (o.CustomerID=c.CustomerID)
where od.UnitPrice*od.quantity*(1-od.discount) >5000
order by totalprice desc;



select CompanyName,City,Country from customers;
select employeeid,LastName,City,Country from employees;

select employeeid,LastName,City,Country 
from employees
where row(city,country) in
(select City,Country from customers);

select* from products;
select* from `order details`;

select productid, unitprice
from `order details`
-- where ProductID=2 
-- order by UnitPrice desc
;

select ProductID, min(UnitPrice),max(UnitPrice)
from `order details` 
group by ProductID;

select distinct od.ProductID, od.UnitPrice
from `order details` od
where od.UnitPrice =(
	select min(UnitPrice)
	from `order details` od2
	where od.ProductID=od2.ProductID
	order by UnitPrice desc)
order by od.ProductID;
