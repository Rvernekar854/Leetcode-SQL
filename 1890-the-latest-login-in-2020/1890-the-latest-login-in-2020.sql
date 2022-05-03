# Write your MySQL query statement below

with Logins_2020 as
(select user_id,time_stamp from Logins where year(time_stamp) = 2020 )

select user_id,max(time_stamp) as last_stamp from Logins_2020
group by user_id