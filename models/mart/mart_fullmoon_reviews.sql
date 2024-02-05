
{{
  config(
    materialized = 'table',
    )
}}


WITH reviews AS (
    SELECT
        *
    FROM
        {{ref("fct_reviews")}}
),
full_moon AS (
    SELECT
        *
    FROM 
        {{ref("seed_full_moon_dates")}}
)
SELECT
    r.*,
    CASE
        WHEN fm.full_moon_date IS NULL THEN 'not full moon'
        ELSE 'full moon'
    END AS is_full_moon
FROM 
    reviews r
LEFT JOIN 
    full_moon fm ON TO_DATE(r.review_date) = DATEADD(DAY, 1, fm.full_moon_date)