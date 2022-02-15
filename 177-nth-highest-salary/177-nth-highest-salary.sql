
create Function getNthHighestSalary( N int) returns int
begin
    return(
    Select salary 
        from (select salary, dense_rank() over(order by salary desc) as rnk
             from employee
             ) x
        where case when 
        N IN (Select dense_rank() over(order by salary desc) as num from employee) then
        x.rnk = N
        else
        null
        end
       limit 1
    
    );
end