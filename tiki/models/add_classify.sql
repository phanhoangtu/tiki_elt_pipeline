SELECT *,
       {{ classify("avg_rating") }} AS class
FROM {{ref("comments_ratings_by_category")}}
