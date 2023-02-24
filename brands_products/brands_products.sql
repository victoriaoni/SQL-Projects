--This query returns the number of products associated with each brand
--It is evident that Trek has the highest number of products(135), and Ritchley has the lowest (1)

Select b.brand_name as Brands, COUNT(p.product_name) as 'Number of Products'
from production.brands as b
inner join production.products as p
on b.brand_id = p.brand_id
Group by b.brand_name
Order by 'Number of Products' Desc