--Select staff, and stores where they work
--If there were new staff with no matching stores,then use left join
select s.first_name, s.last_name, st.city 
from sales.staffs as s
inner join sales.stores as st
on s.store_id = st.store_id