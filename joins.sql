-- Create a query to get all fields from the users table
-- SELECT * FROM users;

-- Create a query to get all fields from the posts table where the user_id is 100
-- SELECT * FROM posts
-- WHERE user_id = 100;

-- Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200
-- SELECT
-- users.first_name,
-- users.last_name,
-- *
-- FROM
-- posts
-- INNER JOIN users ON users.ID=posts.user_id
-- WHERE
-- posts.user_id=200;


-- 4.Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'

-- SELECT
-- users.username,
-- *
-- FROM 
-- posts
-- INNER JOIN users ON users.ID = posts.user_id
-- WHERE
-- users.first_name='Norene'
-- and
-- users.last_name='Schmitt';

-- 5. Create a query to get usernames from the users table where the user has created a post after January 1, 2015
-- SELECT
-- users.username
-- FROM
-- users
-- INNER JOIN posts ON users.ID = posts.user_id
-- WHERE
-- posts.created_at >= '2015-01-01';

-- 6.Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015
-- SELECT
-- posts.title,
-- posts.content,
-- users.username
-- FROM posts
-- INNER JOIN users ON users.ID=posts.user_id
-- WHERE
-- users.created_at <= '2015-01-01';

-- 7.Create a query to get the all rows in the comments table, showing post title (aliased as 'Post Title'), and the all the comment's fields
SELECT
posts.title,
*
FROM
comments
INNER JOIN
posts ON posts.ID = comments.post_id;
