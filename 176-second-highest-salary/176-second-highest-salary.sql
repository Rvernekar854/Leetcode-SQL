# Write your MySQL query statement below
with secondHighest as (
    select salary ,
    dense_rank() over(order by salary desc) as rnk
    from Employee) 

    select max(salary) as SecondHighestSalary 
    from secondHighest
    where secondHighest.rnk = 2
    