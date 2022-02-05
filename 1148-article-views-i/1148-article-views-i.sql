# Write your MySQL query statement below
select distinct x.author_id as id 
from Views x inner join Views y on x.author_id = y.viewer_id and x.article_id = y.article_id

order by id