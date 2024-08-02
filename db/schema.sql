\c postgres;

DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

\c movies_db;

-- CREATE THE TABLES
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE reviews (
  CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(id) ON DELETE CASCADE,
    review TEXT NOT NULL
);


    
/*
    LOG IN:  psql postgres 
    \i schema.sql

*/