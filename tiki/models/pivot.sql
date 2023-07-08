SELECT manufacturer,
       {{ dbt_utils.pivot('authors', dbt_utils.get_column_values(ref("tiki_books_dataset"), 'authors')) }}
FROM {{ref("tiki_books_dataset")}} AS svbc
WHERE svbc.manufacturer LIKE 'Nhà Xuất Bản Thế Giới'
GROUP BY manufacturer
