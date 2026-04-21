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

INSERT INTO university_stats(category, value) values
('Undergraduate Students', 15749),
('Graduate Students', 4172),
('Staff', 1445),
('Foreign Students', 510),
('Schools', 6),
('Partners', 320),
('Library Holdings', 360000);

INSERT INTO 