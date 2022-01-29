# Write your MySQL query statement below
select ad_id, round(coalesce(sum(if(action = "clicked",1,0))/sum(if(action = "viewed",1,0)+if(action = "clicked",1,0)),0)*100,2) as ctr
from ads
group by ad_id
order by ctr desc, ad_id asc

