/* Write your T-SQL query statement below */
with highestStudent as
(
Select Class,count(student) as StudentCount
from courses
group by class)

select class
from highestStudent
where StudentCount >= 5