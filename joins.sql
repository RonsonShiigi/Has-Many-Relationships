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
-- SELECT
-- posts.title AS "Post Title",
-- *
-- FROM
-- comments
-- INNER JOIN
-- posts ON posts.ID = comments.post_id;

-- 8. Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015
-- SELECT
-- posts.title AS "post_title",
-- posts.url AS "post_url",
-- body AS "comment_body"
-- FROM comments
-- INNER JOIN posts ON posts.ID = comments.post_id
-- WHERE posts.created_at <= '2015-01-01';

-- 9. Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015
-- SELECT
-- posts.title AS "post_title",
-- posts.url AS "post_url",
-- comments.body AS "comment_body",
-- *
-- FROM
-- comments
-- INNER JOIN
-- posts ON posts.ID = comments.post_id
-- WHERE posts.created_at >= '2015-01-01';

-- 10. Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'
-- SELECT
-- c.*,
-- posts.title AS "posts_title",
-- posts.url AS "posts_url",
-- c.body AS "comment_body"
-- FROM
-- comments AS c
-- INNER JOIN posts ON posts.ID = c.post_id
-- WHERE c.body ~'USB';

-- 11.Create a query to get the post title (aliased as post_title), first name of the author of the post, last name of the author of the post, and comment body (aliased to comment_body), where the comment body contains the word 'matrix' ( should have 855 results )
-- SELECT
-- posts.title AS "post_title",
-- users.first_name,
-- users.last_name,
-- comments.body AS "comment_body"
-- FROM 
-- posts
-- INNER JOIN users ON posts.user_id = users.ID
-- INNER JOIN comments ON posts.ID = comments.post_id
-- WHERE comments.body ~ 'matrix';

-- 12.Create a query to get the first name of the author of the comment, last name of the author of the comment, and comment body (aliased to comment_body), where the comment body contains the word 'SSL' and the post content contains the word 'dolorum' ( should have 102 results )
-- SELECT
-- users.first_name,
-- users.last_name,
-- comments.body AS "comment_body"
-- FROM comments
-- INNER JOIN users ON comments.user_id = users.ID
-- INNER JOIN posts on comments.post_id = posts.ID
-- WHERE
-- comments.body ~ 'SSL'
-- and
-- posts.content ~ 'dolorum';

-- 13.Create a query to get the first name of the author of the post (aliased to post_author_first_name), last name of the author of the post (aliased to post_author_last_name), the post title (aliased to post_title), username of the author of the comment (aliased to comment_author_username), and comment body (aliased to comment_body), where the comment body contains the word 'SSL' or 'firewall' and the post content contains the word 'nemo' ( should have 218 results )
-- SELECT
-- users.first_name AS "post_author_first_name",
-- users.last_name AS "post_author_last_name",
-- posts.title AS "post_title",
-- users.username AS "comment_author_username",
-- comments.body AS "comment_body"
-- FROM
-- users
-- INNER JOIN comments ON comments.user_id = users.ID
-- INNER JOIN posts ON comments.post_id = posts.ID
-- WHERE(
-- comments.body ~ 'SSL'
-- and
-- posts.content ~ 'nemo'
-- )
-- or(
-- comments.body ~ 'firewall'
-- and
-- posts.content ~ 'nemo'
-- );





SELECT COUNT(*)
FROM comments
INNER JOIN posts ON comments.post_id = posts.ID
WHERE posts.created_at >= '2015-07-14';

-- SELECT COUNT(*)
-- FROM users
-- JOIN comments ON users.ID = comments.user_id
-- WHERE comments.body ~ 'programming';