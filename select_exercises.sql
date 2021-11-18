USE codeup_test_db;

# Name all Pink Floyd albums.
SELECT name AS 'Pink Floyd Albums'
FROM albums
WHERE artist = 'Pink Floyd';

# Year Sgt. Pepper's Lonely Hearts Club Band was released.
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club was released'
FROM albums
WHERE artist = 'Sgt. Pepper''s Lonely Hearts Club Band';

