select * from order_details 

select sum(quantity) as total_unit_sold
from order_details 

select product_id, sum(quantity) as total_units_sold
from order_details  
group by product_id
order by total_units_sold

select date_trunc('month', order_date) as order_month, count(order_id)
from orders
group by order_month
order by order_month

select * from order_details

select product_id, sum(quantity) as total_units_sold 
from order_details
group by product_id
having sum(quantity) >= 1000

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
	
