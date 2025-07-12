1)
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')



2)
SELECT name
FROM world
WHERE continent = 'Europe'
  AND (gdp/population) > (
    SELECT gdp/population
    FROM world
    WHERE name = 'United Kingdom'
  );





3)
select name , continent 
from world 
where continent in (
select continent 
from world 
where name = 'Argentina' or name = 'Australia')
order by name 




4)
select name, population 
from world
where population < (SELECT population FROM world WHERE  name='Germany')
and population > (SELECT population FROM world WHERE  name='United Kingdom')





5)
SELECT 
    name, 
    CONCAT(CAST(ROUND(100*population/(SELECT population FROM world WHERE name = 'Germany'),0) as int), '%') AS Percentage
FROM world
WHERE continent = 'Europe';




6)
select name
from world
where gdp > (select max(gdp) from world where continent = 'Europe');





7)
SELECT  
continent, 
name,
area

 FROM world as x  where x.area = (SELECT max(area) FROM world y
        WHERE y.continent=x.continent)





8)
WITH ranked AS (
  SELECT 
    continent, 
    name,
    ROW_NUMBER() OVER (PARTITION BY continent ORDER BY name) AS rn
  FROM world
)
SELECT continent, name
FROM ranked
WHERE rn = 1;






9)
SELECT name, continent, population
FROM world
WHERE continent IN (
    SELECT continent
    FROM world
    GROUP BY continent
    HAVING MAX(population) <= 25000000
);




10)
SELECT name, continent
FROM world x
WHERE population > ALL (
    SELECT 3 * population
    FROM world y
    WHERE y.continent = x.continent
    AND y.name != x.name
);











