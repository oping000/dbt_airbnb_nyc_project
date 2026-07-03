{% snapshot scd_airbnb__listings %}

{{
    config(
        target_schema = 'DEV',
        unique_key = 'listing_id',
        strategy = 'timestamp',
        updated_at = 'last_scraped',
        invalidate_hard_deletes=True
    )


}}