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

INSERT INTO university_stats (category, value) VALUES 
('Оюутны тоо', 25000),
('Багш нарын тоо', 1200),
('Судалгааны ажил', 450);

INSERT INTO admins (username, password) VALUES ('admin', 'num123');