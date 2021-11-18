USE codeup_test_db;

# Name all Pink Floyd albums.
SELECT name AS 'The name of all Pink Floyd Albums'
FROM albums
WHERE artist = 'Pink Floyd';

# Year Sgt. Pepper's Lonely Hearts Club Band was released.
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club was released in'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# Genre for Nevermind
SELECT genre AS 'Nevermind''s genre is'
FROM albums
WHERE name = 'Nevermind';

# Albums released in 1990s
SELECT name AS 'Albums released in the 90s'
FROM albums
WHERE release_date BETWEEN 1989 AND 1991;

# Albums with less than 20 million in sales
SELECT name as 'Albums with less than 20 million copies sold'
FROM albums
WHERE sales < 20;

# Albums with the genre of rock
SELECT name as '''Rock'' albums'
FROM albums
WHERE genre = 'rock';

