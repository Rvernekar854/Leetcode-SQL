# Write your MySQL query statement below
Select name AS Employee
from Employee x
where x.salary > (select salary from employee e where e.id = x.managerID )