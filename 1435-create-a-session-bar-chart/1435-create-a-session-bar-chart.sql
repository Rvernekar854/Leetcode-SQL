# Write your MySQL query statement below
select "[0-5>" as bin, count(session_id) as total from sessions where duration/60 < 5
union
select "[5-10>" as bin, count(session_id) as total from sessions where duration/60 >= 5 and duration/60 <10
union
select "[10-15>" as bin, count(session_id) as total from sessions where duration/60 >= 10 and duration/60 <15
union
select "15 or more" as bin, count(session_id) as total from sessions where duration/60 >=15
