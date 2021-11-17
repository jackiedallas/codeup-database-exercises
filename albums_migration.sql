USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT (11, 2) NOT NULL,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);