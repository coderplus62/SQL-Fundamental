-- Video 3 (The SELECT Statement)
-- Using world.db
SELECT 'Hello World';
SELECT 'Hello World' AS Result;

SELECT * FROM Country;
SELECT * FROM Country ORDER BY Name;
SELECT Name, LifeExpectancy AS "Life Expectancy" FROM Country ORDER BY Name;

-- Video 4 (Selecting Rows)
-- Using world.db
SELECT Name, Continent, Region FROM Country;
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe';
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name;
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 5;
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 5 OFFSET 5;

-- Video 5 (Selecting Columns)
-- Using world.db
SELECT * FROM Country;
SELECT Name, Continent, Region FROM Country;
SELECT Name AS Country, Region, Continent FROM Country;
SELECT Region, Continent, Name AS Country FROM Country;

-- Video 6 (Counting Rows)
-- Using world.db 
SELECT COUNT(*) FROM Country;
SELECT COUNT(*) FROM Country WHERE Population > 1000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000 AND Continent = 'Europe';
SELECT COUNT(LifeExpectancy) FROM Country;

-- Video 7 (Inserting Data)
-- Using test.db
SELECT * FROM customer;

INSERT INTO customer (name, address, city, state, zip)
              VALUES ('Fred Flintstone', '123 Cobblestone', 'Bedrock', 'CA', '91234')

INSERT INTO customer (name, city, state)
              VALUES ('Jimi Hendrix', 'Renton', 'WA')

-- Video 8 (Updating Data)
-- Using test.db
SELECT * FROM customer;

UPDATE customer SET address = '123 Music Avenue', zip = '98056' WHERE id = 5;

UPDATE customer SET address = '2603 S Washington St', zip = '98056' WHERE id = 5;

UPDATE customer SET address = NULL, zip = NULL WHERE id = 5;

-- Video 9 (Deleting Data)
-- Using test.db'
SELECT * FROM customer WHERE id=4;

DELETE FROM customer WHERE id=4;
SELECT * FROM customer;

DELETE FROM customer WHERE id=5;
SELECT * FROM customer;