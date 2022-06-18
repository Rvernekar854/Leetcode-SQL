# Write your MySQL query statement below

 with vol as (
 select product_id, (Width*Length*Height) as Volume
 from Products)
 
 Select name as warehouse_name, sum(units*Volume) as volume
 from Warehouse w inner join vol v on w.product_id = v.product_id
 group by 1