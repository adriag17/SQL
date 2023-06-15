/*Practice from BreakIntoTech course*/
DB: CharlotteChaze/BreakIntoTech
POSGRESQL

/* QUERY NETFLIX MOVIES, TV SHOWS*/

/* 1. Joining the tables by ther show_id in common */
SELECT p.show_id, p.director, t.title, t.type
FROM "CharlotteChaze/BreakIntoTech"."netflix_people" p
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_titles_info" t
ON p.show_id = t.show_id;

/* 2. How many movie titles are there in the database? */
SELECT COUNT(*)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie';

/* 3. How many tv shows titles are there in the database? */
SELECT COUNT(*)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'TV Show';

/* 4. When was the most recent batch of tv shows and/or movies added to the database? */
SELECT MAX(date(date_added))
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info";

/* 5. List all the movies and tv shows in alphabetical order. */
SELECT title, type
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
ORDER BY title ASC;

/* 6. Who was the Director for the movie Bright Star? */
SELECT t.title, p.director
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" t
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_people" p
ON t.show_id = p.show_id
WHERE title = 'Bright Star';

/* 7. What is the oldest movie in the database and what year was it made? */

SELECT title, release_year
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
ORDER BY release_year DESC
LIMIT 1;

/* OR ANOTHER OPTION FOR #7 */

SELECT title, release_year 
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
AND release_year <= 
(SELECT MIN(release_year) 
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'); 
