
{{
  config(
    materialized = 'view',
    )
}}

WITH listings AS (
    SELECT 
        *
    FROM 
        {{ref("dim_listings_cleansed")}}
),
host AS (
    SELECT 
        *
    FROM 
        {{ref("dim_host_cleansed")}}
)

SELECT
    l.listing_id,
    l.listing_name,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.is_superhost AS host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) AS updated_at
FROM 
    listings l
LEFT JOIN 
    host h ON l.host_id = h.host_id