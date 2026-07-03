select review_id,
       review_date
from {{ref('stg_airbnb__reviews')}}
where review_date >= current_date()