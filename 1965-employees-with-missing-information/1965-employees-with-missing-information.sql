# Write your MySQL query statement below
Select employee_id 
from (
Select employee_id 
from salaries
where employee_id not in (select employee_id from employees)


union

Select employee_id 
from employees
where employee_id not in (select employee_id from salaries)

)as unit
order by employee_id 