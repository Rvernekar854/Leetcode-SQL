# Write your MySQL query statement below
Select name as Customers
from Customers as c left join orders as o on c.id = o.customerid
where c.id not in (select customerid from orders)