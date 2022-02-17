# Write your MySQL query statement below
Select distinct a.num as ConsecutiveNums 
from Logs a, Logs b,Logs c
where a.id = b.id +1 and a.num = b.num
and b.id +1 = c.id +2 and b.num = c.num