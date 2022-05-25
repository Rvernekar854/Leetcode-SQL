# Write your MySQL query statement below
# if count(empployee_id) = 1 then department_id where primary_flag = N
#  IF count(emp_id > 1) then dept_id where parimary_flag = y
  
  Select employee_id, department_id
  from Employee
  where primary_flag = 'Y'
  
  UNION
  
  Select employee_id, department_id
  from Employee
  group by 1
  having count(department_id) = 1
  
  
  