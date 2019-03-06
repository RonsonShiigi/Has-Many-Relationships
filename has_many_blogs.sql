DROP USER IF EXISTS has_many_user;
DROP DATABASE IF EXISTS has_many_blogs;


CREATE USER has_many_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs;

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
    title character varying(180) NULL,
    url character varying(510) NULL,
    content TEXT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    user_id INTEGER NOT NULL REFERENCES users(ID)
    );


CREATE TABLE comments(
    ID SERIAL PRIMARY KEY,
    body character varying(510) NULL DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    user_id INTEGER NOT NULL REFERENCES users(ID),
    post_id INTEGER NOT NULL REFERENCES posts(ID)
    
    );


\i scripts/blog_data.sql;



