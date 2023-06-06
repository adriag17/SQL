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

CREATE TABLE professions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    famous_id integer,
    name text);
    
INSERT INTO professions(famous_id, name) VALUES (1, "Singer");
INSERT INTO professions(famous_id, name) VALUES (3, "Author");
INSERT INTO professions(famous_id, name) VALUES (2, "Actress");
INSERT INTO professions(famous_id, name) VALUES (5, "Director");
INSERT INTO professions(famous_id, name) VALUES (4, "Writer");

CREATE TABLE hobbies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    famous_id integer,
    name text);
    
INSERT INTO hobbies(famous_id, name) VALUES (2, "Swimming");
INSERT INTO hobbies(famous_id, name) VALUES (1, "Jump rope");
INSERT INTO hobbies(famous_id, name) VALUES (3, "Brazilian Jiujitsu");
INSERT INTO hobbies(famous_id, name) VALUES (4, "Hiking");
INSERT INTO hobbies(famous_id, name) VALUES (5, "Sudoku");

/* MY PRACTICE */

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
ON famous_people.id = c.famous_id;

SELECT * 
FROM famous_people
WHERE age > 50;








