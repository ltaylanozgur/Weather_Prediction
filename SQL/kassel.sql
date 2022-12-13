SELECT * FROM weather.kassel;

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.kassel; -- 2000-2010

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.kassel 
WHERE date LIKE '2000-%'; -- 2000

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.kassel 
WHERE date LIKE '2001-%'; -- 2001

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.kassel 
WHERE date LIKE '2000-08%'; -- 2000 August