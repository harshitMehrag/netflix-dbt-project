WITh ratings AS (
    SELECT DISTINCT user_id FROM {{ref('src_ratings')}}
),

tags AS(
    SELECT DISTINCT user_id from {{ref('src_tags')}}
)

SELECT DISTINCT user_id from(
    SELECT * from ratings
    UNION
    SELECT * from tags
)