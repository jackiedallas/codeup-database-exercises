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

# delete albums after 91'
DELETE
FROM albums
WHERE release_date > 1991;

# delete albums with the genre 'disco'
DELETE
FROM albums
WHERE genre = 'disco';

# delete albums by the beatles
DELETE
FROM albums
WHERE artist = 'The Beatles';

