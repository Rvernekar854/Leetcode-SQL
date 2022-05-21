# Write your MySQL query statement below
# find a way to convert the string to lower case and use the trim function to remove leading and trailing spaces
# convert yyyy-mm-dd to yyyy-mm
# count of product name group by producct name and sale date
# order by prod name thn sale date



Select lower(trim(product_name)) as product_name, DATE_FORMAT(sale_date, '%Y-%m') AS sale_date, count(sale_id) as total from Sales
group by month(sale_date),lower(trim(product_name))
order by product_name,month(sale_date)

