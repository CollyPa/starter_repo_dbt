WITH total_avg as(
    SELECT
    city, country, year, lat, lon, 
    avg(avgtemp_c)as avg_temp_week, 
    max(maxtemp_c)as max_temp_week, 
    min(mintemp_c)as min_temp_week
from {{ref("prep_temp")}}
group by city, country, year, week, lat, lon
)
select * from total_avg