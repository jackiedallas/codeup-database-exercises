USE codeup_test_db;

# output all albums
SELECT name AS 'All Albums', artist, release_date
FROM albums;

# output all albums before 1990
SELECT name AS 'All Albums before 1980', artist, release_date
FROM albums
WHERE release_date < 1980;

# albums by michael jackson
SELECT name AS 'Michael Jackson Albums'
FROM albums
WHERE artist = 'Michael Jackson';
