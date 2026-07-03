with listings as (

select * from {{ref('stg_airbnb__listings')}}
),
final as (
    select
        -- ids
        listing_id,
        host_id,

        -- listing details
        listing_name,
        room_type,
        property_type,
        accommodates,
        bedrooms,
        beds,
        bathrooms,

        -- location
        neighbourhood,
        borough,
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

    from listings
)

select * from final
