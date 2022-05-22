# Write your MySQL query statement below


Select id, name
from Students 
where department_id not in (Select department_id from Students s inner join Departments D on s.department_id = D.ID )