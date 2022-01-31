/* Write your T-SQL query statement below */
with HighstPPL as
(select top 1 with ties project_id, count(project_id) as MAXppl
      from  Project 
       group by project_id
        order by  MAXppl desc)
        
select project_id 
from HighstPPL