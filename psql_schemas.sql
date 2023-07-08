DROP TABLE IF EXISTS books_info CASCADE;
CREATE TABLE books_info (
  product_id int,
  title varchar(300),
  authors varchar(100),
  pages int,
  manufacturer varchar(100),
  cover_link varchar(150),
  PRIMARY KEY (product_id, title)
);

DROP TABLE IF EXISTS comments_ratings CASCADE;
CREATE TABLE comments_ratings (
  product_id int,
  comment_id int,
  title varchar(300),
  thank_count int,
  customer_id int,
  rating int,
  comments varchar(5000),
  PRIMARY KEY (comment_id)
);
