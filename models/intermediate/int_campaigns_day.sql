select 
date_date,
round(sum(ads_cost), 0) as ads_costs,
round(sum(impression), 0) as ads_impression,
round(sum(click), 0) as ads_clicks
from {{ref("int_campaigns")}}
group by date_date
order by date_date desc