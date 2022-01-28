# Write your MySQL query statement below
Select Product_name, s.year , s.price 
from Sales s inner join product p on s.product_id = p.product_id
