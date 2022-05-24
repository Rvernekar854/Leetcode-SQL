# Write your MySQL query statement below
# sum of distance group by user_id
# inner join id and user_id
# distance desc, name asc

Select name, Coalesce(sum(distance),0) as travelled_distance
from Users u left join Rides r on u.id = r.user_id
group by user_id
order by travelled_distance desc, name 
