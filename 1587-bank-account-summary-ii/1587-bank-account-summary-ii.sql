# Write your MySQL query statement below

with trans as (Select account, sum(amount) as balance
from Transactions
group by 1
having balance > 10000)

Select name, balance
from Users u inner join Trans t on u.account = t.account