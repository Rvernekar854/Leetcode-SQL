# Write your MySQL query statement below

with que_perct as
(Select round(count(if(rating < 3,1,null))*100/count(*),2) as poor_query_percentage from Queries group by query_name)

select query_name, round(avg(rating/position),2) as quality, round(count(if(rating < 3,1,null))*100/count(*),2) as poor_query_percentage
from Queries
group by query_name