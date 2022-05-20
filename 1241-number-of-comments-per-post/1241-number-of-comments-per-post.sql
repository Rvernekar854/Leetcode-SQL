# Write your MySQL query statement below
# get distinct the Id of the post

with l1 as (select distinct sub_id from Submissions where parent_id is null),l2 as (select parent_id , count(distinct sub_id) as num from Submissions group by parent_id)

Select sub_id as post_id,coalesce(num,0) as number_of_comments
from l1 left join l2 on l1.sub_id = l2.parent_id
order by post_id