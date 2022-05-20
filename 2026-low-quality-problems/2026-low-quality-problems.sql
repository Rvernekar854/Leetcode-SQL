# Write your MySQL query statement below
# likes/(likes+dislikes)

with lq as(Select problem_id, 100*likes/(likes + dislikes) as quality
from Problems
group by problem_id
having quality < 60)

Select problem_id from lq
order by 1