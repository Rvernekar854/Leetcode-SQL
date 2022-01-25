# Write your MySQL query statement below
Select actor_id, director_id
from ActorDirector
group by 1,2
having count(timestamp) >= 3