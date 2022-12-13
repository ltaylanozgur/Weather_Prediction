SELECT * FROM weather.dusseldorf;

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.dusseldorf; -- 2000-2010

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.dusseldorf 
WHERE date LIKE '2000-%'; -- 2000

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.dusseldorf 
WHERE Date >= '2000-01/01' and Date <= '2008-12-31'; -- 2000-2009: 11.17 temp mean

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.dusseldorf 
WHERE date LIKE '2001-%'; -- 2001

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.dusseldorf 
WHERE date LIKE '2000-08%'; -- 2000 August