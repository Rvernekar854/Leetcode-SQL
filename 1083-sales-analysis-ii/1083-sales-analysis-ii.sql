# Write your MySQL query statement below
select distinct buyer_id
from sales
where product_id = (select product_id from product where product_name = 's8') and buyer_id not in (select buyer_id from sales s inner join product p on s.product_id = p.product_id where product_name = 'iphone')
