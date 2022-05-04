# Write your MySQL query statement below

Select contest_id, round(100*count(contest_id)/(Select count(*)from Users),2) as percentage
from Users u inner join Register r on u.user_id = r.user_id
Group by contest_id
order by percentage desc, contest_id asc