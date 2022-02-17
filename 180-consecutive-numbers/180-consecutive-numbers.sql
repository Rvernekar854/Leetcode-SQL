# Write your MySQL query statement below
Select distinct a.num  as ConsecutiveNums
FROM Logs a, Logs b, Logs c
where a.id=b.id+1 and a.num=b.num
and a.id+1=c.id and a.num=c.num