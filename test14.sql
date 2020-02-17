use northwind;
select * from `order details` ;
select * from orders ;

select e.EmployeeID, o.orderId, round(sum(od.unitPrice*od.quantity*(1-od.discount)),2) total
from orders o
	join `order details` od using(orderID)
    join employees e using(employeeId)
group by o.EmployeeID
order by total desc;

show variables;
show variables like 'sql%';
show variables like 'sql_mode';
show variables like '%safe%';

select e.EmployeeID, o.orderId, round(sum(od.unitPrice*od.quantity*(1-od.discount)),2) total
from  employees e
	join orders o using (employeeId)
	join `order details` od using(orderID)
group by o.EmployeeID
order by total desc;

