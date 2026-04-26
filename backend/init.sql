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
('about_num', 'AboutVision', 'values_desc', 'Academic freedom. ~ Choice and competition. ~ Social responsibility. ~ Good governance. ~ Tradition and innovation'),

-- Programs huudasnii text
('programs', 'programs', 'header', 'Academic Programs'),
('programs', 'programs', 'intro', 'NUM offers a wide range of undergraduate and graduate programs across various disciplines.'),

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
('programs', 'Programs', 'applicantmust', 'Applicant must:'),
-- Programs huudasnii undergraduate more text
-- Vndsen garchig
('undergraduate', 'Undergraduate', 'page_title', 'Undergraduate programs'),

-- Applicant must
('undergraduate', 'Undergraduate', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('undergraduate', 'Undergraduate', 'li1', 'Be foreign nationals. ~ Be in good health. ~ Have graduated from their high school education.'),

-- Required documents
('undergraduate', 'Undergraduate', 'required_docs_title', 'REQUIRED DOCUMENTS'),
('undergraduate', 'Undergraduate', 'required_docs_list', 'Online application. ~ Passport copy (valid for at least 1 year; scanned directly from the original passport using a copy machine; ensure the image is clear and not tilted; JPEG format) ~ ID photo that is a personal photograph, not a photo of your ID card (JPEG or PNG format with a plain white background, contrasting clothing, full face visible without glasses or contact lenses; size: 3.5 x 4.5 cm) ~ Proof of financial support (a bank statement or balance certificate in your name, showing sufficient amount to cover tuition and dormitory fees for one year), submitted in Mongolian or English. ~ International Student Pledge (downloadable from the application form) ~ Bank receipt for the admission fee (Transfer 50 USD to GOLOMT BANK, bank account number 1102927753 (international transaction), or transfer 171.600 MNT to GOLOMT BANK, bank account number 1102927741 (for domestic transfer)) ~ Academic diploma and transcript of secondary education/ high school (when visiting NUM, notarized copies of the diploma and transcript will be required for final registration) ~ Official translation of academic diploma and transcript into Mongolian (when visiting NUM, original translation of the diploma and transcript will be required for final registration) ~ Proof of Mongolian language proficiency or TOMFL certificate (optional). ~ Please upload all required documents. If any document is missing or not properly uploaded, your application will not proceed further.'),
('undergraduate', 'required_docs', 'note', 'Please upload all required documents. If any document is missing or not properly uploaded, your application will not proceed further.'),
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
('nonDegree', 'Non-degree', 'period_spring', 'Spring semester: October 1st - December 1st (each year)'),

-- Programs huudasnii Master more text
-- Vndsen garchig
('master', 'Master', 'page_title', 'Master programs'),

-- Admission requirements
('master', 'Master', 'admission_req_title', 'ADMISSION REQUIREMENTS'),
('master', 'Master', 'applicantmust', 'Applicant must'),
('master', 'Master', 'li1', 'Hold a bachelor\'s degree (some majors, such as psychology and law, require a bachelor\'s degree in the same field).'),
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
('master', 'Master', 'period_spring', 'Spring semester: October 1st - December 1st (each year)'),

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
('doctor', 'Doctor', 'apllicantmust', 'applicantmust:'),
('doctor', 'Doctor', 'li1', 'Hold both a Bachelor\'s and a Master\'s degree (for some majors, such as psychology and law, both degrees must be in the same field).'),
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
('doctor', 'Doctor', 'period_spring', 'Spring semester: October 1st - December 1st (each year)'),

-- CAMPUS
('campus', 'Campus', 'title', 'Campus life'),
('campus', 'Campus', 'accommodation', 'Accommodation'),
('campus', 'Campus', 'p1', 'There are five student dormitories - one for international students and scholars with capacity of 160 persons and four others for local students with capacity of 1200 persons. Students from different countries spend their joyful and challenging years of their student\'s life with their common goal of studying there. It is a safe place to live and rooms are furnished. Student affairs and complaints are resolved by a dormitory manager.'),
('campus', 'Campus', 'p2', 'International students contact the Student and Alumni Affairs office and the Registrar Office in advance to arrange a room at the dormitory. As the dormitory for international students has limited number of rooms, earlier booking is advised. The dormitory is guaranteed for government funded students and incoming exchange students. The dormitory is guaranteed for government funded students and inbound exchange students. There are five student dormitories - one for international students and scholars with capacity of 160 persons and four others for local students with capacity of 1200 persons. It is a safe place to live and rooms are well equipped with bed, tables, desks, internet access. Dormitory manager supports a variety of orientation and counseling services.'),
('campus', 'Housing', 'th1', 'International Student Housing'),
('campus', 'Room', 'th2', 'Room capacity'),
('campus', 'Monthly', 'th3', 'Monthly fee'),
('campus', 'Annual', 'th4', 'Annual fee'),
('campus', 'Housing1', 'td', '4th floor of building I, all floors of building 4'),
('campus', 'Housing1', 'capacity1', '1 person'),
('campus', 'Housing1', 'monthly1', '467.000 MNT'),
('campus', 'Housing1', 'annual1', '4.670.000 MNT'),
('campus', 'Housing1', 'capacity2', '2 person'),
('campus', 'Housing1', 'monthly2', '234.000 MNT'),
('campus', 'Housing1', 'annual2', '2.340.000 MNT'),
('campus', 'Housing1', 'capacity3', '3 person'),
('campus', 'Housing1', 'monthly3', '159.000 MNT'),
('campus', 'Housing1', 'annual3', '1.590.000 MNT'),
('campus', 'Housing2', 'td', 'Masters and doctoral students /4th floor of Building II/'),
('campus', 'Housing2', 'capacity1', '1 person'),
('campus', 'Housing2', 'monthly1', '584.000 MNT'),
('campus', 'Housing2', 'annual1', '5.840.000 MNT'),
('campus', 'Housing2', 'capacity2', '2 person'),
('campus', 'Housing2', 'monthly2', '292.000 MNT'),
('campus', 'Housing2', 'annual2', '2.920.000 MNT'),


-- Room condition
('campus', 'room_condition', 'title', 'Room condition'),
('campus', 'room_condition', 'li1', 'two rooms in one block'),
('campus', 'room_condition', 'li2', 'shared bathroom (between 2 rooms)'),
('campus', 'room_condition', 'li3', 'painted floor withour carpet'),

-- Room facilities
('campus', 'room_facilities', 'title', 'Room facilities'),
('campus', 'room_facilities', 'li1', 'bed'), 
('campus', 'room_facilities', 'li2', 'chair'), 
('campus', 'room_facilities', 'li3', 'desk'), 
('campus', 'room_facilities', 'li4', 'wardrobe'), 
('campus', 'room_facilities', 'li5', 'bed set'),
('campus', 'room_facilities', 'li6', 'two rooms'),

-- Common facilities
('campus', 'common_facilities', 'title', 'Common facilities'),
('campus', 'common_facilities', 'li1', 'shared kitchen'),
('campus', 'common_facilities', 'li2', 'shower'),
('campus', 'common_facilities', 'li3', 'laundry'),


-- VISA
('visa', 'Visa', 'title', 'Visa'),

-- Invitation /visa permit/
('visa', 'title1', 'title', 'Invitation /visa permit/'),
('visa', 'title1', 'p1', 'An applicant who has obtained an acceptance letter or letter of invitation from the National University of Mongolia will receive a four-digit code for applying visa by e-mail. Applicant should contact Embassy or Consulate of Mongolia in home country. After reporting the received code to the embassy or consulate, the visa to enter Mongolia will be issued. Please note that you do not need a visa to enter Mongolia if you have a residence permit in Mongolia or already issued for a work or corporate visa at the time of applying to the National University of Mongolia. Please note that visa may not be issued if you have previously violated visa or residence permit legislation during your stay in Mongolia.'),

-- Temporary registration
('visa', 'Visa', 'title2', 'Temporary registration'),
('visa', 'title2', 'p1', 'According to Article 24 of the Regulation on the Legal Status of Foreign Citizens, students must within 3 working days after entering Mongolia come to the Student and Alumni Office of NUM to get registered at Immigration Office.'),
('visa', 'title2', 'p2', 'Necessary documents:'),
('visa', 'title2', 'p3', '1. original passport'),
('visa', 'title2', 'p4', '2. 1 ID photo (4x6 size)'),
('visa', 'title2', 'p5', '3. 1500 MNT'),
('visa', 'title2', 'p6', 'Please note that if you do not get registered to the Mongolian Immigration Office within 7 working days, you will be fined 2,500,000 MNT and will not be able to obtain a residence permit in the future.'),

-- Residence permit
('visa', 'Visa', 'title3', 'Residence permit'),
('visa', 'title3', 'p1', 'According to Article 27.2.5 of the Regulation on the Legal Status of Foreign Citizens, student must obtain a residence permit or certificate of alien registration within 14 calendar days after registration. To obtain a residence permit, student must come to Student and Alumni Office with the required documents.'),
('visa', 'title3', 'p2', 'Necessary documents:'),
('visa', 'title3', 'p3', '1. original passport'),
('visa', 'title3', 'p4', '2. copy of passport'),
('visa', 'title3', 'p5', '3. 1 ID photo (4x6 size)'),
('visa', 'title3', 'p6', '4. current residing address reference'),
('visa', 'title3', 'p7', '5. application form for a residence permit'),
('visa', 'title3', 'p8', '6. 36,500 MNT.'),
('visa', 'title3', 'p9', 'Please note that if you do not issue documents within the specified time, you will be liable and pay large sum of fine according to the law.'),

-- Residence permit extension
('visa', 'Visa', 'title4', 'Residence permit extension'),
('visa', 'title4', 'p1', 'Student must apply to residence permit extension prior to at least 30 days before residence permit expiry. To apply for extension, bring following documents to Student and Alumni Office:'),
('visa', 'title4', 'p2', 'Necessary documents:'),
('visa', 'title4', 'p3', '1. original passport'),
('visa', 'title4', 'p4', '2. copy of passport'),
('visa', 'title4', 'p5', '3. 1 ID photo (4x6 size)'),
('visa', 'title4', 'p6', '4. current residing address reference'),
('visa', 'title4', 'p7', '5. application form for a residence permit'),
('visa', 'title4', 'p8', '6. original residence /alien/ card'),
('visa', 'title4', 'p9', '7. 65000 MNT'),

-- Cancellation of Residence permit
('visa', 'Visa', 'title5', 'Cancellation of Residence permit'),
('visa', 'title5', 'p1', 'Cancellation of residence permit shall be issued within 4 business days before residence permit expires when international student intends to leave Mongolia. Student must bring following documents 5 days before leaving Mongolia to Student and Alumni Office:'),
('visa', 'title5', 'p2', '1. Original passport'),
('visa', 'title5', 'p3', '2. Original residence card'),

-- Re-entry visa permit
('visa', 'Visa', 'title6', 'Re-entry visa permit'),
('visa', 'title6', 'p1', 'International students can apply for re-entry visa during his/her study period (winter, summer holidays). Re-entry visa permit shall be issued within 5 days. Student must bring following documents to apply for re-entry visa:'),
('visa', 'title6', 'p2', '1. Original passport'),
('visa', 'title6', 'p3', '2. Original residence card'),
('visa', 'title6', 'p4', '3. Visa fee'),
('visa', 'title6', 'p5', '~ Single visa 54000 MNT'),
('visa', 'title6', 'p6', '~ Two-time re-entry visa 108.000 MNT'),
('visa', 'title6', 'p7', '~ Multiple re-entry visa for 6 months - 126000 MNT, for 12 months - 252000 MNT'),

-- Visa permit transfer
('visa', 'Visa', 'title7', 'Visa permit transfer'),
('visa', 'title7', 'p1', 'Foreigners enrolled in the NUM non-degree program will not be transferred to another school, and please note that the NUM\'s invitation will be revoked if you decide to transfer'),

-- Tuition Fee (Section: Tuition)
('tuition-fee', 'Tuition', 'main_title', 'Tuition Fee'),
('tuition-fee', 'Tuition', 'col_programs_title', 'PROGRAMS'),
('tuition-fee', 'Tuition', 'program_item1', 'Mongolian language program'),
('tuition-fee', 'Tuition', 'program_item2', 'Undergraduate /Bachelor/'),
('tuition-fee', 'Tuition', 'program_item3', 'Student exchange'),

('tuition-fee', 'Tuition', 'col_credits_title', 'CREDITS /YEAR/'),
('tuition-fee', 'Tuition', 'credit_val1', '21'),
('tuition-fee', 'Tuition', 'credit_val2', '30'),
('tuition-fee', 'Tuition', 'credit_val3', '21-30'),

('tuition-fee', 'Tuition', 'col_cost_title', 'COST PER CREDIT'),
('tuition-fee', 'Tuition', 'cost_val1', '478.000MNT'),
('tuition-fee', 'Tuition', 'cost_val2', '382.000MNT'),
('tuition-fee', 'Tuition', 'cost_val3', 'waivered'),

('tuition-fee', 'Tuition', 'col_fee_title', 'TUITION FEE /YEAR/'),
('tuition-fee', 'Tuition', 'fee_val1', '10.038.000MNT'),
('tuition-fee', 'Tuition', 'fee_val2', '11.460.000MNT'),
('tuition-fee', 'Tuition', 'fee_val3', 'waivered'),

-- Dormitory Fee (Section: Dormitory)
('tuition-fee', 'Dormitory', 'main_title', 'Dormitory Fee'),
('tuition-fee', 'Dormitory', 'housing_title', 'INTERNATIONAL STUDENT HOUSING'),
('tuition-fee', 'Dormitory', 'housing_desc', '4th floor of building I, all floors of building 4'),
('tuition-fee', 'Dormitory', 'capacity_title', 'ROOM CAPACITY'),
('tuition-fee', 'Dormitory', 'capacity_val1', '1 person'),
('tuition-fee', 'Dormitory', 'capacity_val2', '2 person'),
('tuition-fee', 'Dormitory', 'capacity_val3', '3 person'),
('tuition-fee', 'Dormitory', 'monthly_title', 'Monthly Fee'),
('tuition-fee', 'Dormitory', 'monthly_val1', '467.000 MNT'),
('tuition-fee', 'Dormitory', 'monthly_val2', '234.000 MNT'),
('tuition-fee', 'Dormitory', 'monthly_val3', '159.000 MNT'),
('tuition-fee', 'Dormitory', 'annual_title', 'ANNUAL FEE'),
('tuition-fee', 'Dormitory', 'annual_val1', '4.670.000 MNT'),
('tuition-fee', 'Dormitory', 'annual_val2', '2.340.000 MNT'),
('tuition-fee', 'Dormitory', 'annual_val3', '1.590.000 MNT'),
('tuition-fee', 'Dormitory', 'condition_title', 'ROOM CONDITION'),
('tuition-fee', 'Dormitory', 'condition_desc', '~ 2 rooms in one block ~ Shared bathroom between 2 rooms ~ Painted floor without carpets'),
('tuition-fee', 'Dormitory', 'facilities_title', 'ROOM FACILITIES'),
('tuition-fee', 'Dormitory', 'facilities_desc', '~ Bed ~ Chair ~ Desk ~ Wardrobe ~ Bed set ~ Shared fridge'),
('tuition-fee', 'Dormitory', 'common_title', 'COMMON FACILITIES'),
('tuition-fee', 'Dormitory', 'common_desc', '~ Shared kitchen ~ Shower ~ Laundry'),

-- Other Expense (Section: Others)
('tuition-fee', 'Others', 'main_title', 'Other Expense'),
('tuition-fee', 'Others', 'insurance_title', 'Health Insurance'),
('tuition-fee', 'Others', 'insurance_desc', 'International students are advised to buy international students health insurance from home country during study period in Mongolia. Mongolian National Health Insurance costs 105,000 MNT for one year and covers 10-15% of medical expenses. NUM organizes student medical health check-up annually within NUM Hospital.'),
('tuition-fee', 'Others', 'public_transport_title', 'Public Transport'),
('tuition-fee', 'Others', 'public_transport_desc', 'NUM buildings are located right beside bus stops. Bus fare in Mongolia costs 500 MNT per ride. Passengers should obtain U-Money bus card.'),
('tuition-fee', 'Others', 'transport_title', 'Transport'),
('tuition-fee', 'Others', 'transport_desc', 'Train ~ 300,000 MNT  Plane ~ 1,200,000 MNT');