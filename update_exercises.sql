USE codeup_test_db;

# output all albums
SELECT name AS 'All Albums', artist, release_date
FROM albums;

# output all albums before 1990
SELECT name AS 'All Albums before 1990', artist, release_date
FROM albums
WHERE release_date < 1990;
