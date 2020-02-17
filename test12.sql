show tables;
select * from suppliers;
select * from products;
select * from categories;

select productname from products
where CategoryID =(select CategoryID from categories where CategoryName='Seafood');

select CompanyName from suppliers where SupplierID in (
select SupplierID from products where CategoryID in (
select CategoryID from categories where CategoryName='Seafood')
);

-- join 
select * from employees;
select * from orders;
select * from customers;

select employees.EmployeeID,employees.LastName,orders.OrderID,orders.OrderDate 
from employees
   join orders 
   on(employees.EmployeeID = orders.employeeID);
   
select e.EmployeeID,e.LastName,o.OrderID,o.OrderDate 
from employees e
   join orders o
   on(e.EmployeeID = o.employeeID);   
   
   
select employees.EmployeeID,employees.LastName,orders.OrderID,orders.OrderDate 
from employees
   join orders 
   on(employees.EmployeeID = orders.employeeID) order by EmployeeID;
   

select e.EmployeeID,e.LastName,c.CustomerID ,c.CompanyName, c.ContactName, o.OrderID,o.OrderDate 
from employees e
   join orders o on(e.EmployeeID = o.employeeID)
   join customers c on(c.CustomerID = o.CustomerID)
where o.shippeddate > o.RequiredDate and o.orderdate>'1988-01-01'
order by c.companyname;   


select * from orders;
select * from customers;
-- 列出訂單超過15的客戶名稱 
select c.CustomerID, c.CompanyName,count(o.OrderID) 'ordered num'
from customers c
join orders o on (c.CustomerID = o.CustomerID)
group by c.companyName
having  count(o.OrderID) >= 15
order by 'ordered num' desc;