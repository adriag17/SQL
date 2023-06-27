#Spotify dataset downloaded from Kaggle: https://www.kaggle.com/datasets/equinxx/spotify-top-50-songs-in-2021?select=spotify_top50_2021.csv

#1. Create the database 
CREATE TABLE SpotifyData (
id INT PRIMARY KEY,
artist_name VARCHAR NOT NULL,
track_name VARCHAR NOT NULL,
track_id VARCHAR NOT NULL,
popularity INT NOT NULL,
danceability DECIMAL(4,3) NOT NULL,
energy DECIMAL(4,3) NOT NULL,
song_key INT NOT NULL,
loudness DECIMAL(5,3) NOT NULL,
song_mode INT NOT NULL,
speechiness DECIMAL(5,4) NOT NULL,
acousticness DECIMAL(6,5) NOT NULL,
instrumentalness DECIMAL(8,7) NOT NULL,
liveness DECIMAL(5,4) NOT NULL,
valence DECIMAL(4,3) NOT NULL,
tempo DECIMAL(6,3) NOT NULL,
duration_ms INT NOT NULL,
time_signature INT NOT NULL )

#2. Some query for practice:

#2.1 Most popular artist songs with a greater popularity of 80.
  SELECT
	artist_name,
	track_name,
	popularity
FROM
	SpotifyData
WHERE
	popularity > 80
ORDER BY
	popularity;

#2.2 The less popular artist songs with less of 70 for popularity.
  SELECT
	artist_name,
	track_name,
	popularity
FROM
	SpotifyData
WHERE
	popularity < 70;

#2.3 The song with more energy to dance for. 
  SELECT
	artist_name,
	track_name,
	MAX(energy)
FROM
	SpotifyData

#2.4 The song with the less energy to dance for.
  SELECT
	artist_name,
	track_name,
	MIN(energy)
FROM
	SpotifyData

#2.5 Top 3 songs with popularity greater or equal to 95.
  SELECT
	artist_name,
	track_name,
	popularity
FROM
	SpotifyData
WHERE
	popularity >= 95
ORDER BY
	popularity
LIMIT 3;

#2.6 Songs with less than 2:50 min in ms(milisenconds)
  SELECT
	artist_name,
	track_name,
	duration_ms
FROM
	SpotifyData
WHERE
	duration_ms <= 150000
ORDER BY
	duration_ms;


  
