DROP USER IF EXISTS has_many_user;
DROP DATABASE IF EXISTS has_many_blogs;
CREATE USER has_many_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

-- settin up schema and relationships

CREATE TABLE users(
    ID SERIAL PRIMARY KEY,
    username character varying(90) NOT NULL,
    first_name character varying(90) NULL,
    last_name character varying(90) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE posts(
    ID SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(ID),
    title character varying(180) NULL,
    url character varying(510) NULL,
    content TEXT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);


CREATE TABLE comments(
    ID SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(ID),
    post_id INTEGER REFERENCES posts(ID),
    body character varying(510) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);

SELECT * FROM comments;