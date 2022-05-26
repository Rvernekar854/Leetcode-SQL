# Write your MySQL query statement below

with start_time as (

Select machine_id,process_id,timestamp 
    from Activity 
    where activity_type = 'start' ), end_time as (
    
Select machine_id,process_id,timestamp 
    from Activity 
    where activity_type = 'end' )
    
    
Select s.machine_id, round(avg(e.timestamp - s.timestamp),3) as processing_time
from start_time s inner join end_time e on (s.machine_id,s.process_id) = (e.machine_id,e.process_id)
group by 1