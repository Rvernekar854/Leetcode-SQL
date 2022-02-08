# Write your MySQL query statement below
with average as (
select count(distinct user_id,session_id) as NoofUser
from Activity
where activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by user_id)

select COALESCE(round(avg(NoofUser),2),0.0) as average_sessions_per_user
from average