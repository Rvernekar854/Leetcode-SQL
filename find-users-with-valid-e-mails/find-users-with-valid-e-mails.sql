# Write your MySQL query statement below
select *
from Users
where mail REGEXP '^[a-z|A-Z][A-Z|a-z|0-9|_|.|-]*@{1}leetcode\\.com$'