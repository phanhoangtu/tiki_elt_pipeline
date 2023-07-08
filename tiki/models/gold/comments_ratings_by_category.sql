{{ config(materialized="table") }}

WITH reviews_by_category AS (
  SELECT
    bc.category,
    tbd.avg_rating,
    tbd.count_comments
  FROM {{ref("books_category")}} bc
  JOIN {{ref("tiki_books_dataset")}} tbd
  ON bc.title = tbd.title
)

SELECT
  category,
  AVG(avg_rating) AS avg_rating,
  COUNT(count_comments) AS count_comments
FROM reviews_by_category
GROUP BY category
