# Write your MySQL query statement below
SELECT MAX(Salary) as SecondHighestSalary
FROM (
SELECT *
,dense_rank()over(order by Salary DESC) vRank
FROM Employee

)a
where a.vRank = 2
    
    