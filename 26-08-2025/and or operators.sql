create DATABASE book;
USE book;
CREATE TABLE colleges (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),city VARCHAR(50),state VARCHAR(50),ranking INT,students_count INT);
INSERT INTO colleges (name, city, state, ranking, students_count) VALUES
('sathyabama University', 'chennai', 'tamilnadu', 50, 12000),
('gitam university', 'vizag', 'andhrapradesh', 30, 8000),
('srm', 'chennai', 'tamilnadu', 25, 15000),
('amritha university', 'banglore', 'karnataka', 40, 9000),
('veltech', 'chennai', 'tamilnadu', 35, 11000);
SELECT * FROM colleges
WHERE (state = 'tamilnadu' AND ranking < 45)
   OR (state = 'andhrapradesh' AND students_count > 10000);