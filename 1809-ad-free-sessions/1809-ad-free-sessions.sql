# Write your MySQL query statement below

Select session_id 
from Playback
where session_id Not in (Select session_id from Playback p inner join Ads a on p.customer_id = a.customer_id where 
                       timestamp between start_time and end_time  )