SELECT name, year FROM sbor
WHERE year = 2018;


SELECT name,time FROM track
WHERE time = (SELECT MAX(time) FROM track)


SELECT name FROM track
WHERE time >= '3,5'

SELECT name,year FROM sbor
WHERE year BETWEEN 2018 AND 2020;

SELECT name From artist
WHERE name NOT LIKE'% %';


SELECT name FROM track
WHERE name LIKE '%My%';





