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




