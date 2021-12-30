# Write your MySQL query statement below
Select User_id , count(follower_id) as followers_count
from Followers
group by User_id
order by User_id