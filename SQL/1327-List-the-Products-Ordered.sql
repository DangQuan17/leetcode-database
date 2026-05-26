select p.product_name, SUM(o.unit) as unit
from products p
join orders o
on p.product_id = o.product_id 
where (o.order_date BETWEEN '2020-02-01' AND '2020-02-29') 
group by p.product_name
having SUM(o.unit) >= 100;