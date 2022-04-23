-- Video 02 LENGTH FUNCTION
-- world.db

SELECT LENGTH('5char');
SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC;
SELECT Population, LENGTH(Population) AS Digit FROM Country ORDER BY Digit DESC;

-- 03 SUBSTR
-- album.db

SELECT SUBSTR('this string', 6);
SELECT SUBSTR('this string', 6, 3);
SELECT released,
    SUBSTR(released, 1, 4) AS year,
    SUBSTR(released, 6, 2) AS month,
    SUBSTR(released, 9, 2) AS day
  FROM album
  ORDER BY released
;

-- 04 TRIM

SELECT TRIM('   string   ');
SELECT LTRIM('   string   ');
SELECT RTRIM('   string   ');
SELECT TRIM('...string...', '.');

-- 05 UPPER/LOWER
-- world.db

SELECT 'StRiNg' = 'string';
SELECT LOWER('StRiNg') = LOWER('string');
SELECT UPPER('StRiNg') = UPPER('string');
SELECT UPPER(Name) FROM City ORDER BY Name;
SELECT LOWER(Name) FROM City ORDER BY Name;


