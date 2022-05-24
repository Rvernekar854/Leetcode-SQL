# Write your MySQL query statement below

with orders_2020 as (
Select seller_id 
from Orders
where year(sale_date) = 2020)


Select seller_name
from Seller
where
seller_id not in (select * from orders_2020 )
order by 1