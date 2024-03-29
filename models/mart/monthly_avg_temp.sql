WITH total_month_avg as(
    SELECT city, country, month, year, lat, lon,
    avg(avgtemp_c)as avg_temp_month, 
    max(maxtemp_c)as max_temp_month, 
    min(mintemp_c)as min_temp_month
from {{ref("prep_temp")}}
group by city, country, year, month, lat, lon
)
select * from total_month_avg