# Write your MySQL query statement below
#sum of points for female and male
# group by day 

Select gender,day, sum(score_points) over(order by day) as total 
from Scores
where gender = 'F'
group by day,gender


Union All

Select gender,day, sum(score_points) over(order by day) as total 
from Scores
where gender = 'M'
group by day,gender


