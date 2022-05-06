# Write your MySQL query statement below

with stu as (Select student_id,student_name,subject_name 
from Students cross join Subjects)

Select stu.student_id, stu.student_name, stu.subject_name, count(e.student_id) as attended_exams
from stu  left join Examinations e on stu.subject_name = e.subject_name and stu.student_id = e.student_id
group by stu.student_name,stu.subject_name
order by student_id, subject_name

