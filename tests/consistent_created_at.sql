

WITH listings AS (
    SELECT
        *
    FROM 
        {{ref("dim_listings_cleansed")}}
),
reviews AS (
    SELECT 
        *
    FROM
        {{ref('fct_reviews')}}
)
SELECT
    *
FROM 
    listings
INNER JOIN reviews ON 
    listings.listing_id = reviews.listing_id
WHERE 
    reviews.review_date < listings.created_at
LIMIT 5
