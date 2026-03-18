WITH source AS (
    SELECT *
    FROM `art-sales-prod2026.art_sales_raw.raw_art_sales`
)

SELECT
    LOWER(TRIM(artist)) AS artist_name,
    LOWER(TRIM(movement)) AS style_name,
    SAFE_CAST(year AS INT64) AS year,
    SAFE_CAST(price_usd AS FLOAT64) AS price_usd,
    CURRENT_TIMESTAMP() AS loaded_at
FROM source
WHERE SAFE_CAST(price_usd AS FLOAT64) IS NOT NULL