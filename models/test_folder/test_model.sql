

WITH source AS (
    SELECT *
    FROM {{ref("src_hosts")}}
    LIMIT 10
)
SELECT * FROM source