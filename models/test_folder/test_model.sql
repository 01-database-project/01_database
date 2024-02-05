

WITH source AS (
    SELECT *
    FROM {{ref("src_host")}}
    LIMIT 10
)
SELECT * FROM source