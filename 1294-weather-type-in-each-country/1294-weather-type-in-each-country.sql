# Write your MySQL query statement below

with l1 as (Select country_id, avg(weather_state) as average
from Weather
where month(day) = 11
group by 1)

Select country_name,
       case 
       when average <= 15 then 'Cold'
       when average >= 25 then 'Hot'
       else 'Warm'
       End as weather_type
from l1 inner join Countries on l1.country_id = Countries.country_id 
       