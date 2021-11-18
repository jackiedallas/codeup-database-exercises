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

# make all albums 10 times more popular
UPDATE albums
SET sales = sales * 10;

# move all albums before 1980 back to the 1800s
UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
