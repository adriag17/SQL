-- Database taken from BIT Course. I'm using Tableplus software to run the queries.

CREATE TABLE CityBikeLanes (
id INTEGER PRIMARY KEY,
year_installed YEAR,
year_updated YEAR,
street VARCHAR,
width_feet INTEGER,
safety_rating INTEGER,
protected VARCHAR ) 
INSERT INTO CityBikeLanes values(1,2012, 2020, "Chestnut",4,4,"yes");
INSERT INTO CityBikeLanes values(2,2016, 2020,"Walnut",4,3.8,"yes");
INSERT INTO CityBikeLanes values(3,2011, 2020, "Market", 3.5, 2, "no");
INSERT INTO CityBikeLanes values(4,2008, 2020,"Locust",4,5,"yes");
INSERT INTO CityBikeLanes values(5,2002, 2020,"South",4.5,4.3,"no");
INSERT INTO CityBikeLanes values(6,2012, 2021, "18th",4,4.7,"yes");
INSERT INTO CityBikeLanes values(7,2016, 2021,"2nd",4,3.7,"yes");
INSERT INTO CityBikeLanes values(8,2011, 2021, "Lombard", 3.5, 2.2, "no");
INSERT INTO CityBikeLanes values(9,2008, 2021,"Pine",4,4.9,"yes");
INSERT INTO CityBikeLanes values(10,2002, 2021,"Tasker",4.5,4.8,"no");
INSERT INTO CityBikeLanes values(11,2012, 2020, "Earp",4,4.1,"yes");
INSERT INTO CityBikeLanes values(12,2016, 2020,"Titan",4,3.8,"yes");
INSERT INTO CityBikeLanes values(13,2011, 2020, "Manning", 3.4, 2, "no");
INSERT INTO CityBikeLanes values(14,2008, 2020,"Fieldcrest",4,4.9,"yes");
INSERT INTO CityBikeLanes values(15,2002, 2020,"York",4.5,4.5,"no");
INSERT INTO CityBikeLanes values(16,2012, 2021, "Race",4,4.7,"yes");
INSERT INTO CityBikeLanes values(17,2016, 2021,"Museum",4,3.8,"yes");
INSERT INTO CityBikeLanes values(18,2011, 2021, "Altin", 3.5, 2, "no");
INSERT INTO CityBikeLanes values(19,2008, 2021,"Fred",4,4.5,"yes");
INSERT INTO CityBikeLanes values(20,2002, 2021,"Morris",4.5,4.7,"no");
INSERT INTO CityBikeLanes values(21,2012, 2020, "Jameson",4,3.9,"yes");
INSERT INTO CityBikeLanes values(22,2016, 2020,"MLK",4,3.9,"yes");
INSERT INTO CityBikeLanes values(23,2011, 2020, "Parker", 3.6, 2, "no");
INSERT INTO CityBikeLanes values(24,2008, 2020,"Thomas",4,4.8,"yes");
INSERT INTO CityBikeLanes values(25,2002, 2020,"Running",4.5,4.3,"no");
INSERT INTO CityBikeLanes values(26,2012, 2021, "Waverly",4,4.5,"yes");
INSERT INTO CityBikeLanes values(27,2016, 2021,"Addison",4,3.9,"yes");
INSERT INTO CityBikeLanes values(28,2011, 2021, "Beaver", 3.5, 2.1, "no");
INSERT INTO CityBikeLanes values(29,2008, 2021,"Kensington",4,5,"yes");
INSERT INTO CityBikeLanes values(30,2002, 2021,"Mouse",4.5,4.5,"no");
INSERT INTO CityBikeLanes values(31,2012, 2020, "Chestnut",4,4.5,"yes");
INSERT INTO CityBikeLanes values(32,2016, 2020,"Walnut",4,3.7,"yes");
INSERT INTO CityBikeLanes values(33,2011, 2020, "Market", 3.8, 2, "no");
INSERT INTO CityBikeLanes values(34,2008, 2020,"Locust",4,4.8,"yes");
INSERT INTO CityBikeLanes values(35,2002, 2020,"South",4.5,4.7,"no");
INSERT INTO CityBikeLanes values(36,2012, 2021, "18th",4,4.7,"yes");
INSERT INTO CityBikeLanes values(37,2016, 2021,"2nd",4,3.2,"yes");
INSERT INTO CityBikeLanes values(38,2011, 2021, "Lombard", 3.5, 2.5, "no");
INSERT INTO CityBikeLanes values(39,2008, 2021,"Pine",4,5,"yes");
INSERT INTO CityBikeLanes values(40,2002, 2021,"Tasker",4.5,4.3,"no");
INSERT INTO CityBikeLanes values(41,2012, 2020, "Earp",4,4.5,"yes");
INSERT INTO CityBikeLanes values(42,2016, 2020,"Titan",4,3.9,"yes");
INSERT INTO CityBikeLanes values(43,2011, 2020, "Manning", 3.4, 2.7, "no");
INSERT INTO CityBikeLanes values(44,2008, 2020,"Fieldcrest",4,4.7,"yes");
INSERT INTO CityBikeLanes values(45,2002, 2020,"York",4.5,4.4,"no");
INSERT INTO CityBikeLanes values(46,2012, 2021, "Race",4,4.9,"yes");
INSERT INTO CityBikeLanes values(47,2016, 2021,"Museum",4,3.4,"yes");
INSERT INTO CityBikeLanes values(48,2011, 2021, "Altin", 3.7, 2, "no");
INSERT INTO CityBikeLanes values(49,2008, 2021,"Fred",4,4.7,"yes");
INSERT INTO CityBikeLanes values(50,2002, 2021,"Morris",4.5,4.4,"no");
INSERT INTO CityBikeLanes values(51,2012, 2020, "Jameson",4,4,"yes");
INSERT INTO CityBikeLanes values(52,2016, 2020,"MLK",4,4,"yes");
INSERT INTO CityBikeLanes values(53,2011, 2020, "Parker", 3.6, 2.3, "no");
INSERT INTO CityBikeLanes values(54,2008, 2020,"Thomas",4,4.5,"yes");
INSERT INTO CityBikeLanes values(55,2002, 2020,"Running",4.5,4.5,"no");
INSERT INTO CityBikeLanes values(56,2012, 2021, "Waverly",4,4.7,"yes");
INSERT INTO CityBikeLanes values(57,2016, 2021,"Addison",4,3.6,"yes");
INSERT INTO CityBikeLanes values(58,2011, 2021, "Beaver", 3.5, 2.5, "no");
INSERT INTO CityBikeLanes values(59,2008, 2021,"Kensington",4,4.9,"yes");
INSERT INTO CityBikeLanes values(60,2002, 2021,"Mouse",4.5,4.3,"no");

-- Practice queries using CTE(Temporary tables)

-- 1. Selects the average safetyrating for each bike lane from the CTE.
-- 2. Filters to only the bike lanes that have an average safety rating of 4.0 or higher.
-- 3. Creates a label for these bike lanes that says "Safe Lane".

-- A/ 
  WITH safety_average_cte AS (
	SELECT
		street,
		AVG(safety_rating) AS rating
	FROM
		CityBikeLanes
	GROUP BY
		street
)
SELECT
	street,
	rating,
	'Safe lane' AS 'label'
FROM
	safety_average_cte
WHERE 
	rating >= 4;

-- Practice using window functions.
--    Bike lanes with an average safety rating of 4 or more should be labeled "Leave As-Is".
--    Bike lanes with an average safety rating of less than 2.5 should be labeled as "Remove".
--    All other bike lanes should be labeled as "Improvements Needed".

-- A/
SELECT
	street,
	safety_rating,
	AVG(safety_rating) OVER (PARTITION BY street) AS 'Average_safety_rating',
	CASE 
	WHEN AVG(safety_rating) OVER (PARTITION BY street) >= 4 THEN 'Leave As-Is'
	WHEN AVG(safety_rating) OVER (PARTITION BY street) < 2.5 THEN 'Remove'
	ELSE 'Improvements Needed'
	END AS 'Recommendation'
FROM
	CityBikeLanes
