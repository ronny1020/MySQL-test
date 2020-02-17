use northwind;

show tables;
select * from suppliers;
select * from products;

select  s.companyName,p.productName
from products p , suppliers s
where P.supplierId=s.supplierId
order by s.companyName;