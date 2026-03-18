SELECT
    ROW_NUMBER() OVER() AS style_id,
    style_name
FROM (
    SELECT DISTINCT style_name
    FROM {{ ref('stg_art_sales') }}
)