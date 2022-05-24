# Write your MySQL query statement below

Select product_name, sum(unit) as unit
from orders o inner join Products P on o.product_id = P.product_id
where year(order_date) = 2020 and monthname(order_date) = 'February'
group by o.product_id
having sum(unit) >= 100
