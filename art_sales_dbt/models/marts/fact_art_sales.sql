WITH staging AS (
    SELECT * FROM {{ ref('stg_art_sales') }}
),

artist_dim AS (
    SELECT * FROM {{ ref('dim_artist') }}
),

style_dim AS (
    SELECT * FROM {{ ref('dim_style') }}
),

date_dim AS (
    SELECT * FROM {{ ref('dim_date') }}
)

SELECT
    GENERATE_UUID() AS sale_id,
    a.artist_id,
    s.style_id,
    d.year_id,
    st.price_usd,
    st.loaded_at
FROM staging st
LEFT JOIN artist_dim a
ON st.artist_name = a.artist_name
LEFT JOIN style_dim s
ON st.style_name = s.style_name
LEFT JOIN date_dim d
ON st.year = d.year