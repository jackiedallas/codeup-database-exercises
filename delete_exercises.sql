USE codeup_test_db;

SELECT *
FROM albums
WHERE release_date > 1991;

SELECT *
FROM albums
WHERE genre LIKE '%disco%';

SELECT *
FROM albums
WHERE artist = 'Whitney Houston';