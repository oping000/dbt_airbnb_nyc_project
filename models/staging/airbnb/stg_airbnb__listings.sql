with source as (
select * from {{source('airbnb','raw_listings')}}
),

renamed as (
    select
        -- ids
        id as listing_id,
        host_id,
        
        -- listing details
        name as listing_name,
        room_type,
        property_type,
        accommodates,
        bedrooms,
        beds,
        bathrooms_text as bathrooms,
        amenities,
        
        -- location
        neighbourhood_cleansed as neighbourhood,
        neighbourhood_group_cleansed as borough,
        latitude,
        longitude,
        
        -- pricing
        price,
        minimum_nights,
        maximum_nights,
        
        -- review scores
        review_scores_rating,
        review_scores_cleanliness,
        review_scores_location,
        review_scores_value,
        
        -- availability
        availability_365,
        number_of_reviews,
        last_scraped

    from source
)

select * from renamed