# Write your MySQL query statement below
Select activity_date as day , count(Distinct user_id ) as active_users 
from Activity 
where activity_date between date_sub("2019-07-27",INTERVAL 29 DAY) and "2019-07-27"
group by activity_date
having active_users > 0