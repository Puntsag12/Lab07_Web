CREATE DATABASE IF NOT EXISTS num_db;
USE num_db;

CREATE TABLE IF NOT EXISTS admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS university_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    value INT NOT NULL
);

CREATE TABLE IF NOT EXISTS page_content (
    id INT AUTO_INCREMENT PRIMARY KEY,
    section_name VARCHAR(50),
    content_key VARCHAR(50),
    content_value TEXT
);

INSERT INTO university_stats (category, value) VALUES 
('Undergraduate Student', 15749),
('Master\'s and Doctorate Students', 4172),
('Teachers and Employees', 1445),
('Foreign Student', 510),
('Schools', 6),
('International Cooperation Partners', 320),
('Library Holdings', 360000);

INSERT INTO page_content (section_name, content_key, content_value) VALUES
('Hero', 'title_1', 'Leading Mongolia'),
('Hero', 'title_2', 'Competing in the world'),
('About', 'quote', '" We admire true knowledge, humanism and intelligence "'),
('About', 'description_1', 'The National University of Mongolia founded in 1942 is the oldest university in Mongolia...'),
('About', 'description_2', 'Graduates of the NUM have had and will continue to play a leading role...');

INSERT INTO admins (username, password) VALUES ('admin', 'num123');