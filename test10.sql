use northwind;
select * from `order details`; 
-- 訂單明細中各產品的總銷售量 
-- 小於200的產品列出來 
select * from `order details`;
select ProductID, sum(quantity) sum from `order details` group by ProductID ;
select ProductID, sum(quantity) sum from `order details` group by ProductID having sum <200;

-- 產品平均 
select * from `order details` order by ProductID,UnitPrice;

select ProductID, avg(UnitPrice) avgPrice from `order details` group by ProductID order by avgPrice;