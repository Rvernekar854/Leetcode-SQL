# Write your MySQL query statement below
with managers as
(Select employee_id, reports_to,name,age
from Employees
where reports_to is not null)


Select m.reports_to as employee_id,e.name, count(m.reports_to) as reports_count,round(avg(m.age)) as average_age
from managers m inner join Employees e on m.reports_to = e.employee_id
group by m.reports_to
order by employee_id