with source as (

select * from {{source('airbnb','raw_reviews')}}
),

renamed as (
    select
        -- ids
        id as review_id,
        listing_id,
        reviewer_id,
        
        -- review details
        reviewer_name,
        date as review_date,
        comments as review_text

    from source
)

select * from renamed