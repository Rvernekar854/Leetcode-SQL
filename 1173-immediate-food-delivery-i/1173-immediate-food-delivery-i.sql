# Write your MySQL query statement below

Select round(100*(select count(delivery_id) from Delivery where order_date = customer_pref_delivery_date)  /count(delivery_id),2) as immediate_percentage from Delivery