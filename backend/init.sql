CREATE TABLE university_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stat_key VARCHAR(50),
    category VARCHAR(100),
    stat_value INT
);

CREATE TABLE site_content (
    id INT AUTO_INCREMENT PRIMARY KEY,
    page VARCHAR(50), -- e.g., 'index', 'about'
    section VARCHAR(50), -- e.g., 'hero', 'vision'
    content_key VARCHAR(50), -- e.g., 'title_1', 'desc'
    content_value TEXT
);

CREATE TABLE schools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    school_key VARCHAR(50),
    title VARCHAR(255),
    description TEXT
);

CREATE TABLE program_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prog_key VARCHAR(50),
    title VARCHAR(100),
    description TEXT
);

INSERT INTO university_stats (stat_key, category, stat_value) VALUES
('undergraduate_students', 'Undergraduate Students', 15749),
('graduate_students', 'Graduate Students', 4172),
('staff', 'Staff', 1445),
('foreign_students', 'Foreign Students', 510),
('schools', 'Schools', 6),
('partners', 'Partners', 320),
('library_holdings', 'Library Holdings', 360000);

INSERT INTO site_content (page, section, content_key, content_value) VALUES
('index', 'hero', 'title_1', 'Leading Mongolia'),
('index', 'hero', 'title_2', 'Competing in the world'),
('index', 'about', 'quote', '" We admire true knowledge, humanism and intelligence "'),
('index', 'about', 'desc', 'The National University of Mongolia founded in 1942...'),
('about_num', 'AboutMain', 'paragraph_1', 'The National University of Mongolia founded in 1942...'),
('about_num', 'AboutVision', 'vision_desc', 'We aim to become a national model research university...');

INSERT INTO schools (school_key, title, description) VALUES
('school_of_law', 'School of Law', 'Our mission is to preserve its leading position...'),
('business_school', 'Business School', 'As a forefront business school in Mongolia...'),
('school_of_technology', 'School of Information Technology and Electronics', 'To cultivate a new generation of versatile leaders...');

INSERT INTO program_categories (prog_key, title, description) VALUES
('undergraduate', 'Undergraduate', 'Students who have successfully completed secondary education...'),
('master', 'Master', 'The NUM offers 93 master degree programs...'),
('doctor', 'Doctor', 'The NUM offers 44 PhD degree programs...');

CREATE TABLE site_data (
    id INT PRIMARY KEY,
    data_json JSON
);

INSERT INTO site_data (id, data_json) VALUES (1, '{ "university_stats": { ... }, "index": { ... } }');
