--This query would bring back ALL products, whether they are assigned to a category or not
select p.product_name as 'Product Name', c.category_name as 'Category Name'
from production.products as p
left join production.categories as c
on p.category_id = c.category_id