SHOW DATABASES;
USE world;


Select COUNT(*) from city where countrycode='USA';

SELECT POPULATION, lifeexpectancy
FROM COUNTRY WHERE NAME='Argentina';


SELECT NAME, lifeexpectancy
FROM COUNTRY 
WHERE lifeexpectancy=(
	SELECT MAX(lifeexpectancy)
    FROM COUNTRY
     WHERE lifeexpectancy IS NOT NULL AND lifeexpectancy > 0
    );
    
SELECT ci.name 
FROM country c 
JOIN city ci ON ci.ID=c.capital WHERE c.name='Spain';

SELECT * FROM country;
    
SELECT c1.language FROM countrylanguage c1 JOIN country c2 ON c2.code=c1.countrycode WHERE c2.region='Southeast asia';

SELECT name FROM city WHERE name LIKE 'F%' limit 25;

SELECT COUNT(*)
from city c1 
JOIN country c2 ON c2.code=c1.countrycode WHERE c2.name LIKE 'china';

SELECT NAME, Population
FROM COUNTRY 
WHERE population=(
	SELECT MIN(Population)
    FROM COUNTRY
    WHERE population IS NOT NULL AND population > 0
    );
    