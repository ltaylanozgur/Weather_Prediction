SELECT * FROM weather.muenchen;

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.muenchen; -- 2000-2010

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.muenchen 
WHERE date LIKE '2000-%'; -- 2000

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.muenchen 
WHERE date LIKE '2001-%'; -- 2001

SELECT * FROM weather.muenchen 
WHERE date LIKE '2001-%'; -- 2001

SELECT ROUND(AVG(temp_mean),2) AS 'avg. mean temperature' 
FROM weather.muenchen 
WHERE date LIKE '2000-08%'; -- 2000 August