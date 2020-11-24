SELECT title
FROM movies;

SELECT title, year_released
FROM movies
ORDER BY year_released DESC;

SELECT *
FROM directors
ORDER BY country, last_name;

INSERT INTO directors (first_name, last_name, country)
VALUES ("Rob", "Reiner", "USA");

SELECT director_id, last_name
FROM directors
WHERE last_name = "Reiner";

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 11);

SELECT title, year_released, last_name
FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id;

SELECT title, first_name, last_name
FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
ORDER BY last_name;

SELECT first_name, last_name
FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
WHERE title = "The Incredibles";

SELECT last_name, country
FROM directors
RIGHT JOIN movies ON directors.director_id = movies.movie_id
WHERE title = "Roma";

DELETE FROM movies
WHERE movie_id = 7;

DELETE FROM directors
WHERE director_id = 4;