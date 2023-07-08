WITH reviews AS (
  SELECT
    product_id,
    AVG(rating) AS avg_rating,
    COUNT(comments) AS count_comments
  FROM {{ref("raw_comments_ratings")}}
  GROUP BY product_id
)

SELECT
  rbi.*,
  r.avg_rating,
  r.count_comments
FROM {{ref("raw_books_info")}} rbi
JOIN reviews r
ON rbi.product_id = r.product_id
