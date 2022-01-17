/* Write your T-SQL query statement below */
with Customer as
(Select top 1 customer_number, count(order_number) as NoOfOrders 
 from orders
 group by customer_number
 order by NoOfOrders desc)

select customer_number from Customer