with reviews as (

select * from {{ref('stg_airbnb__reviews')}}
),

 listings as (

select * from {{ref('stg_airbnb__listings')}}

),

final as (
    select
        -- ids
        r.review_id,
        r.listing_id,
        r.reviewer_id,

        -- review details
        r.reviewer_name,
        r.review_date,
        r.review_text,

        -- listing context
        l.listing_name,
        l.room_type,
        l.neighbourhood,
        l.borough,
        l.price,
        l.host_id

    from reviews r
    left join listings l
        on r.listing_id = l.listing_id
)

select * from final

