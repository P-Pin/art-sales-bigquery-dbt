SELECT
    ROW_NUMBER() OVER() AS year_id,
    year
FROM (
    SELECT DISTINCT year
    FROM {{ ref('stg_art_sales') }}
)