# Write your MySQL query statement belowser
select ifnull((select round(count(distinct requester_id, accepter_id)/count(distinct sender_id, send_to_id),2)
from Friendrequest, requestaccepted),0)
as accept_rate