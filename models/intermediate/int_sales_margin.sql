select *,
ROUND(quantity * purchase_price, 2) as purchase_cost,
ROUND(revenue - (quantity * purchase_price), 2) as margin
from {{ref("stg_raw__sales")}} as sales
left join {{ref("stg_raw__product")}} as products
on sales.product_id = products.products_id