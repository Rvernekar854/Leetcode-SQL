# Write your MySQL query statement below

Select name 
from SalesPerson
where sales_id not in (Select sales_id 
from Orders 
where com_id =  (select com_id from company where name = "red"))

