--select * from sales.staffs

--Select staff, and stores where they work
--If there were new staff with no matching stores,then use left join
select s.first_name, s.last_name, st.city 
from sales.staffs as s
inner join sales.stores as st
on s.store_id = st.store_id


--You may have online orders with no staff. To see ALL orders, use a left join
--If you want to see staff that have made sales, use inner join because there may be 
--new staff with no sales.
select o.order_id, o.order_date, s.staff_id
from sales.orders as o
inner join sales.staffs as s
on o.staff_id = s.staff_id


--This query would bring back ALL products, whether they are assigned to a category or not
select p.product_name as 'Product Name', c.category_name as 'Category Name'
from production.products as p
left join production.categories as c
on p.category_id = c.category_id
