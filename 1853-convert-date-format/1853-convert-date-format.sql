# Write your MySQL query statement below

with l1 as (Select dayname(day) as day,day(day) as Dates, monthname(day) as month, year(day)as years from Days)

Select concat(day,", ",month," ",Dates,", ",years) as day from l1