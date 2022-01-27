# Write your MySQL query statement below
Select distinct product_id, product_name 
from Product  
where product_id not in (Select product_id from sales where sale_date  < '2019-01-01' or sale_date > '2019-03-31')