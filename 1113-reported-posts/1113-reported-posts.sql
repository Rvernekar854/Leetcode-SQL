# Write your MySQL query statement below
Select extra as report_reason,count(distinct post_id ) as report_count
from Actions
where action_date = '2019-07-04'and extra <> 'null' and action = 'report'
group by extra
