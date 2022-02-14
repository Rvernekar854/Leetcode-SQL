# Write your MySQL query statement below
select IFNULL(NULL, max(salary)) as SecondHighestSalary
from Employee
where salary not in (select max(salary) from Employee)
    