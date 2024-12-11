{{config(materialized: ='view')}}


select 
f.date_date,
round(f.operational_margin - c.ads_costs) as ads_margin,
f.average_basket,
f.operational_margin,
c.ads_costs,
c.ads_impression,
c.ads_clicks,
f.quantity,
f.revenue,
f.purchase_cost,
f.margin,
f.shipping_fee,
f.logcost,
f.ship_cost
from {{ref("finance_days")}} f
left join {{ref("int_campaigns_day")}} c
on c.date_date = f.date_date