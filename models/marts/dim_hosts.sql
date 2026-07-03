with listings as (

select * from {{ref('airbnb','raw__listings')}}

),
hosts as (
    select distinct
        -- ids
        host_id,

        -- host details
        host_name,
        host_since,
        host_is_superhost,
        host_response_time,
        host_response_rate,
        host_acceptance_rate,
        host_listings_count,
        host_identity_verified

    from listings
)

select * from hosts