--You may have online orders with no staff. To see ALL orders, use a left join
--If you want to see staff that have made sales, use inner join because there may be 
--new staff with no sales.
--This query returns all orders from sales.staffs table with sales staff, if there is one.

select o.order_id as 'Order ID', o.order_date as 'Order Date', 
s.staff_id as 'Staff ID', s.first_name as 'First Name', s.last_name as 'Last Name'
from sales.orders as o
inner join sales.staffs as s
on o.staff_id = s.staff_id



select * from sales.staffs