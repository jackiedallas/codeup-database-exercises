USE codeup_test_db;


CREATE TABLE IF NOT EXISTS `nba_legends` (
                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                               `player_first_name` varchar(50) DEFAULT NULL,
                               `player_last_name` varchar(100) NOT NULL,
                               `content` text NOT NULL,
                               PRIMARY KEY (`id`)
);