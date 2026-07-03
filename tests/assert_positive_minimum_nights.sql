select listing_id,
       minimum_nights
from {{ref('stg_airbnb__listings')}}
where minimum_nights <=0