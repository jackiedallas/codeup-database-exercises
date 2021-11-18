USE codeup_test_db;

# albums after 91'
SELECT *
FROM albums
WHERE release_date > 1991;

# albums with the genre 'disco'
SELECT *
FROM albums
WHERE genre = 'disco';

# albums by the beatles
SELECT *
FROM albums
WHERE artist = 'The Beatles';

