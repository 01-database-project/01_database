
WITH hosts AS (
    SELECT
        *
    FROM
        {{ref("src_hosts")}}
)
SELECT
    host_id,
    COALESCE(host_name, 'Anonymus') AS host_name,
    Is_Superhost,
    created_at,
    updated_at
FROM 
    hosts