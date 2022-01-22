# Write your MySQL query statement below
with teamSize as
( select team_id, count(employee_id) as team_size
from employee 
group by team_id)

select e.employee_id, team_size 
from teamSize t, employee e
where t.team_id = e.team_id
