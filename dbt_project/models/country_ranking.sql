select 
	rank() over (order by order_cnt desc, order_amount desc) as rank_no,
	t.* 
from (
	select 
		o.order_country,
		count(distinct o.order_id) as order_cnt,
		sum(o.product_price * o.qt)::numeric(12,2) as order_amount
	from public."Orders" o 
	where o.order_status <> 'Canceled'
	group by o.order_country
) t