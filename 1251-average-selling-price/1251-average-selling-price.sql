# Write your MySQL query statement below
with sales as
(select p.product_id, sum(units) as TotalUnits, Sum(units*Price) as TotalSales
from prices p inner join UnitsSold u on p.product_id = u.product_id
where purchase_date between start_date and end_date 
group by p.product_id)


select product_id, round(TotalSales/TotalUnits,2) as average_price
from sales
