CREATE TABLE famous_people(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    birthdate TEXT,
    age INTEGER,
    birth_country TEXT);
    
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Hayley Williams", "December 27", 34, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Emma Watson", "April 15", 33, "France");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Robert Pattinson", "May 13", 37, "England");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("JK Rowling", "July 31", 57, "England");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Quentin Tarantino", "March 27", 60, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Beyonce", "September 4", 41, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Kendrick Lamar", "June 17", 35, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Jennifer Aniston", "February 11", 54, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Daniel Craig", "March 2", 55, "England");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Adriene Mishler", "September 29", 38, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Maddie Ziegler", "September 30", 20, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Chantel Jeffries", "September 30", 30, "USA");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Martin Lawrence", "April 16", 58, "Germany");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Cole Sprouse", "August 4", 30, "Italy");
INSERT INTO famous_people (fullname, birthdate, age, birth_country) VALUES ("Drake", "October 24", 36, "Canada");

CREATE TABLE professions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    famous_id integer,
    name text);
    
INSERT INTO professions(famous_id, name) VALUES (1, "Singer");
INSERT INTO professions(famous_id, name) VALUES (3, "Author");
INSERT INTO professions(famous_id, name) VALUES (2, "Actress");
INSERT INTO professions(famous_id, name) VALUES (5, "Director");
INSERT INTO professions(famous_id, name) VALUES (4, "Writer");
INSERT INTO professions(famous_id, name) VALUES (6, "Singer");
INSERT INTO professions(famous_id, name) VALUES (7, "Singer");
INSERT INTO professions(famous_id, name) VALUES (8, "Actress");
INSERT INTO professions(famous_id, name) VALUES (9, "Actor");
INSERT INTO professions(famous_id, name) VALUES (10, "YouTube Star");
INSERT INTO professions(famous_id, name) VALUES (11, "Dancer");
INSERT INTO professions(famous_id, name) VALUES (12, "DJ");
INSERT INTO professions(famous_id, name) VALUES (13, "YouTube Star");
INSERT INTO professions(famous_id, name) VALUES (14, "Actor");
INSERT INTO professions(famous_id, name) VALUES (15, "Singer");

CREATE TABLE hobbies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    famous_id integer,
    name text);
    
INSERT INTO hobbies(famous_id, name) VALUES (2, "Swimming");
INSERT INTO hobbies(famous_id, name) VALUES (1, "Jump rope");
INSERT INTO hobbies(famous_id, name) VALUES (3, "Brazilian Jiujitsu");
INSERT INTO hobbies(famous_id, name) VALUES (4, "Hiking");
INSERT INTO hobbies(famous_id, name) VALUES (5, "Sudoku");
INSERT INTO hobbies(famous_id, name) VALUES (6, "Dance");
INSERT INTO hobbies(famous_id, name) VALUES (7, "Sudoku");
INSERT INTO hobbies(famous_id, name) VALUES (9, "Play videogames");
INSERT INTO hobbies(famous_id, name) VALUES (13, "Climbing rocks");
INSERT INTO hobbies(famous_id, name) VALUES (12, "Archery");
INSERT INTO hobbies(famous_id, name) VALUES (11, "Bounge");
INSERT INTO hobbies(famous_id, name) VALUES (10, "Cooking");
INSERT INTO hobbies(famous_id, name) VALUES (8, "Knitting");
INSERT INTO hobbies(famous_id, name) VALUES (14, "Play bingo");
INSERT INTO hobbies(famous_id, name) VALUES (15, "Play the guitar");

/* MY PRACTICE */

SELECT * 
FROM famous_people;

SELECT famous_people.fullname as "Famous born in England"
FROM famous_people
WHERE birth_country = "England";

SELECT famous_people.fullname, professions.name as profession
FROM famous_people
JOIN professions
ON famous_people.id = professions.famous_id;

SELECT famous_people.fullname, hobbies.name as hobbie
FROM famous_people
JOIN hobbies
ON famous_people.id = hobbies.famous_id;

SELECT famous_people.fullname, b.name as profession, c.name as hobbie
FROM famous_people
JOIN professions b
ON famous_people.id = b.famous_id
JOIN hobbies c
ON famous_people.id = c.famous_id
ORDER BY profession ASC;

SELECT * 
FROM famous_people
WHERE age > 50;

SELECT * 
FROM famous_people
WHERE age < 50;
