use northwind;
show tables;
select * from `order details`;
-- use ` not ' or "
select OrderID, ProductID ,UnitPrice ,Quantity,Discount, 
ROUND(UnitPrice*Quantity*(1-Discount),2) 'final price' from `order details`;

select '4',sum(quantity) 'total quantity' from `order details` where ProductID=4;