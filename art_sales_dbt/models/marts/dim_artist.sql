SELECT
    ROW_NUMBER() OVER() AS artist_id,
    artist_name
FROM (
    SELECT DISTINCT artist_name
    FROM {{ ref('stg_art_sales') }}
)