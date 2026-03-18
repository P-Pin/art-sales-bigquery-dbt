SELECT *
FROM {{ ref('fact_art_sales') }}
WHERE price_usd <= 0