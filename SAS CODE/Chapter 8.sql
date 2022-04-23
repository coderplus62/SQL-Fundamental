-- Video 01 Aggregate Data
-- Using world.db

SELECT COUNT(*) FROM Country;

SELECT Region, COUNT(*)
  FROM Country
  GROUP BY Region
;

SELECT Region, COUNT(*) AS Count
  FROM Country
  GROUP BY Region
  ORDER BY Count DESC, Region
;

-- Using album.db

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  GROUP BY a.id
  ORDER BY Tracks DESC, Album
;

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  GROUP BY a.id
  HAVING Tracks >= 10
  ORDER BY Tracks DESC, Album
;

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  WHERE a.artist = 'The Beatles'
  GROUP BY a.id
  HAVING Tracks >= 10
  ORDER BY Tracks DESC, Album
;

-- Video 02 Aggregate functions
-- Using world.db
SELECT COUNT(*) FROM Country;
SELECT COUNT(Population) FROM Country;
SELECT AVG(Population) FROM Country;
SELECT Region, AVG(Population) FROM Country GROUP BY Region;
SELECT Region, MIN(Population), MAX(Population) FROM Country GROUP BY Region;
SELECT Region, SUM(Population) FROM Country GROUP BY Region;

-- Video 03 DISTINCT Aggregates
-- Using world.db

SELECT COUNT(HeadOfState) FROM Country;
SELECT HeadOfState FROM Country ORDER BY HeadOfState;
SELECT COUNT(DISTINCT HeadOfState) FROM Country;

