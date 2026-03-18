SELECT *
FROM {{ ref('dim_date') }}
WHERE year < 1000 OR year > 2100