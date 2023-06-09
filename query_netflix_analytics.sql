/*Practice from BreakIntoTech course*/
DB: CharlotteChaze/BreakIntoTech
POSGRESQL

/* QUERY */

SELECT p.show_id, p.director, t.title, t.type
FROM "CharlotteChaze/BreakIntoTech"."netflix_people" p
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_titles_info" t
ON p.show_id = t.show_id;

SELECT COUNT(*)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie';

SELECT COUNT(*)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'TV Show';

SELECT MAX(date(date_added))
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info";

SELECT title, type
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
ORDER BY title ASC;

SELECT t.title, p.director
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" t
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_people" p
ON t.show_id = p.show_id
WHERE title = 'Bright Star';

SELECT title, release_year
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
ORDER BY release_year DESC
LIMIT 1;

SELECT title, release_year 
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
AND release_year <= 
(SELECT MIN(release_year) 
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'); 
