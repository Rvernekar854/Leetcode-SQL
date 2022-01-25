# Write your MySQL query statement below
with highest_sales as
(Select seller_id,
         DENSE_RANK() over(order by sum(price)  desc) as rnk
         from sales
         group by seller_id)
         
         
         select seller_id 
         from highest_sales
         where rnk = 1