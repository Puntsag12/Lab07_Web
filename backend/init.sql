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
    page_name VARCHAR(50),
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

-- Index huudasnii text
INSERT INTO page_content (page_name, section_name, content_key, content_value) VALUES
('index', 'hero', 'title_1', 'Leading Mongolia'),
('index', 'hero', 'title_2', 'Competing in the world'),
('index', 'about', 'quote', '" We admire true knowledge, humanism and intelligence "'),
('index', 'about', 'desc', 'The National University of Mongolia founded in 1942 is the oldest university in Mongolia. Throughout more than seven decades NUM has played a fundamental role in creating, promoting and strengthening capacities in contemporary scientific research nationwide. The university has educated generations of professional community for the government, public sectors and industries in the country. Graduates of the NUM have had and will continue to play a leading role in the political, scientific, socio-economic, cultural and academic development of the nation. In the 21st century, the NUM remains'),
('index', 'title', 'law', 'School of Law'),
('index', 'branch', 'school_of_law', 'Our mission is to preserve its leading position in legal academic studies and legal profession and knowledge, to uphold rule of law and equity, and prepare and educate the best legal professionals with capacity to complete on national and international realm.'),
('index', 'title', 'international', 'School of Political Science, International Relations and Public Administrations'),
('index', 'branch', 'school_of_international', 'The SPSIRPA aims to be a teaching and research school capable of contributing to the development of Mongolia and solving national and regional problems.'),
('index', 'title', 'business', 'Business School'),
('index', 'branch', 'business_school', 'As a forefront business school in Mongolia, we strive to become one of the leading educational institutions in its field in the Central Asian region while being able to teach business subjects and conduct scientific research at the highest international level.'),
('index', 'title', 'technology', 'School of Information Technology and Electronics'),
('index', 'branch', 'school_of_technology', 'To cultivate a new generation of versatile leaders through a world-class curriculum rooted in the fundamental sciences. By advancing information technology and applied research, we aim to contribute significantly to the development of Mongolia and the global advancement of human knowledge.'),
('index', 'title', 'sciences', 'School of Arts and Sciences'),
('index', 'branch', 'school_of_sciences', 'As the national pioneer in scientific development, we will be a leading university that drives societal progress through excellence in research and education.'),

-- About Us huudasnii gol text
('about_num', 'AboutMain', 'title', 'About us'),
('about_num', 'AboutMain', 'p1', 'The National University of Mongolia founded in 1942 is the oldest university in Mongolia. Throughout more than seven decades NUM has played a fundamental role in creating, promoting and strengthening capacities in contemporary scientific research nationwide.'),
('about_num', 'AboutMain', 'p2', 'The university has educated generations of professional community for the government, public sectors and industries in the country. Graduates of the NUM have had and will continue to play a leading role in the political, scientific, socio-economic, cultural and academic development of the nation.'),
('about_num', 'AboutMain', 'p3', 'In the 21st century, the NUM remains to be a prestigious university distinguished by its quality education and research in the fields of natural sciences, social sciences and humanities. The university is distinguished by the number of fundamental and applied advanced research and intellectual products applied to industry and business.'),
('about_num', 'AboutMain', 'p4', 'The academic community of the university is truly multicultural. Thanks to our global alumni, we serve societies and communities worldwide, promote Mongolia and its values overseas, and contribute to democracy, development and peace in the world.'),
('about_num', 'AboutMain', 'p5', 'The NUM promotes mutually beneficial international cooperation. The university is a member of the International Association of Universities (IAU), University Mobility in Asia and Pacific (UMAP) and the Eurasia Pacific University Network.'),

-- Vision, Mission, Values text
('about_num', 'AboutVision', 'quote', '" We admire true knowledge, humanism and intelligence "'),
('about_num', 'AboutVision', 'vision_title', 'VISION'),
('about_num', 'AboutVision', 'vision_desc', 'We aim to become a national model research university which meets world standards and provides pillars for the development of Mongolia.'),
('about_num', 'AboutVision', 'mission_title', 'MISSION'),
('about_num', 'AboutVision', 'mission_desc', 'The mission of the National University of Mongolia is an academic institution with the goal of disseminating knowledge by its sustained research and teaching in natural science, issues of socio-economic development based on the curriculum characterized by the liberal arts tradition.'),
('about_num', 'AboutVision', 'values_title', 'VALUES'),
('about_num', 'AboutVision', 'li1', 'Academic freedom'),
('about_num', 'AboutVision', 'li2', 'Choice and competition'),
('about_num', 'AboutVision', 'li3', 'Social responsibility'),
('about_num', 'AboutVision', 'li4', 'Good governance'),
('about_num', 'AboutVision', 'li5', 'Tradition and innovation'),

-- Programs huudasnii text
('programs', 'programs', 'header', 'title', 'Academic Programs'),
('programs', 'programs', 'intro', 'desc', 'NUM offers a wide range of undergraduate and graduate programs across various disciplines.'),

-- Programs huudasnii text
('programs', 'Programs', 'undergrad_title', 'Undergraduate'),
('programs', 'Programs', 'undergrad_desc', 'Students who have successfully completed secondary education and passed the national general examinations are admitted to'),
('programs', 'Programs', 'master_title', 'Master'),
('programs', 'Programs', 'master_desc', 'The NUM offers 93 master degree programs approved by the Ministry of Education and Science. A regular master program at the NUM is comprised of 32 credits. The duration of master'),
('programs', 'Programs', 'doctor_title', 'Doctor'),
('programs', 'Programs', 'doctor_desc', 'The NUM offers 44 PhD degree programs approved by the Ministry of Education and Science. A regular PhD program at the NUM is comprised of 30 credits for required'),
('programs', 'Programs', 'nondegree_title', 'Non degree'),
('programs', 'Programs', 'nondegree_desc', 'The Department of Mongolian language and culture provides a Mongolian language program for exchange students who wish to improve their Mongolian language, explore'),
('programs', 'Programs', 'exchange_title', 'Exchange'),
('programs', 'Programs', 'exchange_desc', 'Suppose nominated students intend to take lectures and courses in an undergraduate program (please keep in mind that the majority of the lectures and courses are held in Mongolian).'),

-- Programs huudasnii undergraduate more text
-- Vndsen garchig
('undergraduate', 'Undergraduate', 'page_title', 'Undergraduate programs'),

-- Applicant must
('undergraduate', 'Undergraduate', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('undergraduate', 'Undergraduate', 'li1', 'Be foreign nationals.'),
('undergraduate', 'Undergraduate', 'li2', 'Be in good health.'),
('undergraduate', 'Undergraduate', 'li3', 'Have graduated from their high school education.'),

-- Required documents
('undergraduate', 'Undergraduate', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('undergraduate', 'Undergraduate', 'docs_online_app', 'Online application'),
('undergraduate', 'Undergraduate', 'docs_passport', 'Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format)'),
('undergraduate', 'Undergraduate', 'docs_photo', 'ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm)'),
('undergraduate', 'Undergraduate', 'docs_finance', 'Proof of financial support (a bank statement or balance certificate in your name, showing sufficient amount to cover tuition and dormitory fees for one year), submitted in Mongolian or English.'),
('undergraduate', 'Undergraduate', 'docs_pledge', 'International Student Pledge (downloadable from the application form)'),
('undergraduate', 'Undergraduate', 'docs_fee', 'Bank receipt for the admission fee (Transfer 50 USD to GOLOMT BANK, bank account number 1102927753 (international transaction), or transfer 171.600 MNT to GOLOMT BANK, bank account number 1102927741 (for domestic transfer))'),
('undergraduate', 'Undergraduate', 'docs_diploma', 'Academic diploma and transcript of secondary education/ high school (when visiting NUM, notarized copies of the diploma and transcript will be required for final registration)'),
('undergraduate', 'Undergraduate', 'docs_translation', 'Official translation of academic diploma and transcript into Mongolian (when visiting NUM, original translation of the diploma and transcript will be required for final registration)'),
('undergraduate', 'Undergraduate', 'docs_language', 'Proof of Mongolian language proficiency or TOMFL certificate (optional)'),
('undergraduate', 'Undergraduate', 'req_note', 'Please upload all required documents. If any document is missing or not properly uploaded, your application will not proceed further.'),

-- Language requirement
('undergraduate', 'Undergraduate', 'language_req_title', 'LANGUAGE REQUIREMENT'),
('undergraduate', 'Undergraduate', 'language_req_text', 'Applicants must pass the Mongolian language test offered by NUM or submit a TOMFL (Test of Mongolian as a Foreign Language) certificate.'),
('undergraduate', 'Undergraduate', 'admission_test_title', 'ADMISSION TEST'),
('undergraduate', 'Undergraduate', 'admission_test_text', 'A professional test in the Mongolian language, offered by NUM.'),

-- Calendar and application period
('undergraduate', 'Undergraduate', 'calendar_title', 'ACADEMIC CALENDAR'),
('undergraduate', 'Undergraduate', 'calendar_fall', 'Fall semester: Early August to mid-December'),
('undergraduate', 'Undergraduate', 'calendar_spring', 'Spring semester: Early February to mid-June'),
('undergraduate', 'Undergraduate', 'application_period_title', 'ONLINE APPLICATION PERIOD'),
('undergraduate', 'Undergraduate', 'period_fall', 'Fall semester: May 1st - July 1st (each year)'),
('undergraduate', 'Undergraduate', 'period_spring', 'Spring semester: October 1st - December 1st (each year)'),

-- Programs huudasnii non degree more text
-- Vndsen garchig
('nonDegree', 'Non-degree', 'page_title', 'Non degree programs'),

-- Admission requirements
('nonDegree', 'Non-degree', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('nonDegree', 'Non-degree', 'admission_req_text', 'Applicants must be foreign nationals, in good health, and have completed their high school education.'),

-- required documents
('nonDegree', 'Non-degree', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('nonDegree', 'Non-degree', 'docs_online_app', 'Online application'),
('nonDegree', 'Non-degree', 'docs_passport', 'Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format)'),
('nonDegree', 'Non-degree', 'docs_photo', 'ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm)'),
('nonDegree', 'Non-degree', 'docs_finance', 'Proof of financial support (a bank statement or balance certificate in your name, showing sufficient amount to cover tuition and dormitory fees for one year), submitted in Mongolian or English.'),
('nonDegree', 'Non-degree', 'docs_pledge', 'International Student Pledge (downloadable from the application form)'),
('nonDegree', 'Non-degree', 'docs_fee', 'Bank receipt for the admission fee (Transfer 50 USD to GOLOMT BANK, bank account number 1102927753 (international transaction), or transfer 171.600 MNT to GOLOMT BANK, bank account number 1102927741 (for domestic transfer))'),
('nonDegree', 'Non-degree', 'docs_diploma', 'Academic diploma and transcript of secondary education/ high school (when visiting NUM, notarized copies of the diploma and transcript will be required for final registration)'),
('nonDegree', 'Non-degree', 'docs_translation', 'Official translation of academic diploma and transcript into Mongolian (when visiting NUM, original translation of the diploma and transcript will be required for final registration)'),
('nonDegree', 'Non-degree', 'docs_language', 'Proof of Mongolian language proficiency or TOMFL certificate (optional)'),

-- Calendar
('nonDegree', 'Non-degree', 'calendar_title', 'ACADEMIC CALENDAR'),
('nonDegree', 'Non-degree', 'calendar_fall', 'Fall semester: Early October to mid-December'),
('nonDegree', 'Non-degree', 'calendar_spring', 'Spring semester: Early February to mid-May'),

-- application period
('nonDegree', 'Non-degree', 'application_period_title', 'ONLINE APPLICATION PERIOD'),
('nonDegree', 'Non-degree', 'period_fall', 'Fall semester: May 1st - July 1st (each year)'),
('nonDegree', 'Non-degree', 'period_spring', 'Spring semester: October 1st - December 1st (each year)');

-- Programs huudasnii Master more text
-- Vndsen garchig
('master', 'Master', 'page_title', 'Master programs'),

--Admission requirements
('master', 'Master', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('master', 'Master', 'li1', 'Hold a bachelor’s degree (some majors, such as psychology and law, require a bachelor’s degree in the same field).'),
('master', 'Master', 'li2', 'Be foreign nationals.'),
('master', 'Master', 'li3', 'Be in good health.'),

-- Required documents
('master', 'Master', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('master', 'Master', 'docs_online_app', 'Online application'),
('master', 'Master', 'docs_passport', 'Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format)'),
('master', 'Master', 'docs_photo', 'ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm)'),
('master', 'Master', 'docs_finance', 'Proof of financial support (a bank statement or balance certificate in your name, showing sufficient amount to cover tuition and dormitory fees for one year), submitted in Mongolian or English.'),
('master', 'Master', 'docs_pledge', 'International Student Pledge (downloadable from the application form)'),
('master', 'Master', 'docs_fee', 'Bank receipt for the admission fee (Transfer 50 USD to GOLOMT BANK, bank account number 1102927753 (international transaction), or transfer 171.600 MNT to GOLOMT BANK, bank account number 1102927741 (for domestic transfer))'),
('master', 'Master', 'docs_diploma', 'Academic diploma and transcript of secondary education/ high school (when visiting NUM, notarized copies of the diploma and transcript will be required for final registration)'),
('master', 'Master', 'docs_translation', 'Official translation of academic diploma and transcript into Mongolian (when visiting NUM, original translation of the diploma and transcript will be required for final registration)'),
('master', 'Master', 'docs_language', 'Proof of Mongolian language proficiency or TOMFL certificate (optional)'),
('master', 'Master', 'req_note', 'Please upload all required documents. If any document is missing or not properly uploaded, your application will not proceed further.'),

-- Language requirement and admision test
('master', 'Master', 'language_req_title', 'LANGUAGE REQUIREMENT'),
('master', 'Master', 'language_req_text', 'Applicants must pass the Mongolian language test offered by NUM or submit a TOMFL (Test of Mongolian as a Foreign Language) certificate.'),
('master', 'Master', 'admission_test_title', 'ADMISSION TEST'),
('master', 'Master', 'admission_test_text', 'A professional test in the Mongolian language, offered by NUM.'),

-- Calendar
('master', 'Master', 'calendar_title', 'ACADEMIC CALENDAR'),
('master', 'Master', 'calendar_fall', 'Fall semester: Early October to mid-December'),
('master', 'Master', 'calendar_spring', 'Spring semester: Early February to mid-May'),

-- application period
('master', 'Master', 'application_period_title', 'ONLINE APPLICATION PERIOD'),
('master', 'Master', 'period_fall', 'Fall semester: May 1st - July 1st (each year)'),
('master', 'Master', 'period_spring', 'Spring semester: October 1st - December 1st (each year)');

-- Programs huudasnii Exchange more text
-- Vndsen garchig
('exchange', 'Exchange', 'page_title', 'Exchange programs'),

-- General requirements
('exchange', 'Exchange', 'admission_req_title', 'GENERAL REQUIREMENTS'),
('exchange', 'Exchange', 'admission_req_text', 'Applicants must be nominated by Partner Institutions and be in good health.'),

-- required documents
('exchange', 'Exchange', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('exchange', 'Exchange', 'docs_online_app', 'Online application'),
('exchange', 'Exchange', 'docs_transcript', 'Academic transcript from Home University in English'),
('exchange', 'Exchange', 'docs_passport', 'Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format)'),
('exchange', 'Exchange', 'docs_photo', 'ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm)'),
('exchange', 'Exchange', 'docs_pledge', 'International Student Pledge (downloadable from the application form)'),
('exchange', 'Exchange', 'docs_language', 'Proof of Mongolian language proficiency (not mandatory)'),

-- Calendar
('exchange', 'Exchange', 'calendar_title', 'ACADEMIC CALENDAR'),
('exchange', 'Exchange', 'calendar_fall', 'Fall semester: From early September to mid-January'),
('exchange', 'Exchange', 'calendar_spring', 'Spring semester: From early February to mid-June'),

-- Reminder
('exchange', 'Exchange', 'reminder_title', 'REMINDER'),
('exchange', 'Exchange', 'reminder_text', 'Suppose nominated students intend to take lectures and courses in an undergraduate program (please keep in mind that the majority of the lectures and courses are held in Mongolian). In that case, we recommend they have sufficient Mongolian language abilities to understand the lectures and courses. The Mongolian language program /Non-Degree Program/ does not require any language ability.'),

-- Application period
('exchange', 'Exchange', 'application_period_title', 'ONLINE APPLICATION PERIOD'),
('exchange', 'Exchange', 'period_fall', 'Fall semester: May 1st - July 1st (each year)'),
('exchange', 'Exchange', 'period_spring', 'Spring semester: October 1st - December 1st (each year)'),

-- Programs huudasnii Doctor more text
-- Vndsen garchig
('doctor', 'Doctor', 'page_title', 'Doctor programs'),

-- Application must
('doctor', 'Doctor', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('doctor', 'Doctor', 'li1', 'Hold both a Bachelor’s and a Master’s degree (for some majors, such as psychology and law, both degrees must be in the same field).'),
('doctor', 'Doctor', 'li2', 'Be foreign nationals.'),
('doctor', 'Doctor', 'li3', 'Be in good health.'),

-- Required documents
('doctor', 'Doctor', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('doctor', 'Doctor', 'docs_online_app', 'Online application'),
('doctor', 'Doctor', 'docs_passport', 'Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format)'),
('doctor', 'Doctor', 'docs_photo', 'ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm)'),
('doctor', 'Doctor', 'docs_finance', 'Proof of financial support (a bank statement or balance certificate in your name, showing sufficient amount to cover tuition and dormitory fees for one year), submitted in Mongolian or English.'),
('doctor', 'Doctor', 'docs_pledge', 'International Student Pledge (downloadable from the application form)'),
('doctor', 'Doctor', 'docs_fee', 'Bank receipt for the admission fee (Transfer 50 USD to GOLOMT BANK, bank account number 1102927753 (international transaction), or transfer 171.600 MNT to GOLOMT BANK, bank account number 1102927741 (for domestic transfer))'),
('doctor', 'Doctor', 'docs_diploma', 'Academic diploma and transcript of secondary education/ high school (when visiting NUM, notarized copies of the diploma and transcript will be required for final registration)'),
('doctor', 'Doctor', 'docs_translation', 'Official translation of academic diploma and transcript into Mongolian (when visiting NUM, original translation of the diploma and transcript will be required for final registration)'),
('doctor', 'Doctor', 'docs_language', 'Proof of Mongolian language proficiency or TOMFL certificate (optional)'),
('doctor', 'Doctor', 'req_note', 'Please upload all required documents. If any document is missing or not properly uploaded, your application will not proceed further.'),

-- Language requirement and admission test
('doctor', 'Doctor', 'language_req_title', 'LANGUAGE REQUIREMENT'),
('doctor', 'Doctor', 'language_req_text', 'Applicants must pass the Mongolian language test offered by NUM or submit a TOMFL (Test of Mongolian as a Foreign Language) certificate.'),
('doctor', 'Doctor', 'admission_test_title', 'ADMISSION TEST'),
('doctor', 'Doctor', 'admission_test_text', 'A professional test in the Mongolian language, offered by NUM.'),

-- Calendar
('doctor', 'Doctor', 'calendar_title', 'ACADEMIC CALENDAR'),
('doctor', 'Doctor', 'calendar_fall', 'Fall semester: Early September to mid-December'),
('doctor', 'Doctor', 'calendar_spring', 'Spring semester: Early February to mid-May'),

-- application period
('doctor', 'Doctor', 'application_period_title', 'ONLINE APPLICATION PERIOD'),
('doctor', 'Doctor', 'period_fall', 'Fall semester: May 1st - July 1st (each year)'),
('doctor', 'Doctor', 'period_spring', 'Spring semester: October 1st - December 1st (each year)');
