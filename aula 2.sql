select product_name, 
	quantity_per_unit, 
	unit_price, 
	category_name, 
	description
from products 
inner join categories on 
categories.category_id = products.category_id

select *
from order_details 
where quantity > 
	(
	-- Subquery
	select avg(quantity)
	from order_details 
	)

--- CTE -> common table expression

with average as (
	select avg(quantity) as average_quantity
	from order_details 
)

select *
from order_details, average
where quantity > average.average_quantity
	
