# Write your MySQL query statement below

select q.id,q.year, ifnull(n.npv,0) as npv from 
Queries q left join NPV n on q.id = n.id and q.year = n.year
order by q.id, q.year