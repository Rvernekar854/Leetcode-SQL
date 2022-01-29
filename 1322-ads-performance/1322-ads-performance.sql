# Write your MySQL query statement below
select ad_id, round(coalesce(sum(if(action ="Clicked",1,0))/sum(if(action ="Viewed",1,0)+if(action ="Clicked",1,0)),0)*100,2) as ctr
from Ads
group by 1
order by ctr desc,ad_id 