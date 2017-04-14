--25 busiest departing airports 2012-2016

DROP TABLE IF EXISTS busy_2012_2016;
CREATE TABLE busy_2012_2016 AS 
SELECT originairportid,
       destairportid,
       year,
       month, 
       dayofweek,
       origin,
       dest, 
       COUNT(*) AS numofflights,
       CONCAT(origin, "_", dest) AS route,
       depdelayminutes,
       arrdelayminutes,
       CASE WHEN AVG(depdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN AVG(depdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       CASE WHEN AVG(arrdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN AVG(arrdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM flights_2012_2016
WHERE origin IN ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC', 'SFO', 'MCO',
                'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
GROUP BY originairportid, destairportid, year, month, dayofweek, origin, dest, depdelayminutes, arrdelayminutes
;



DROP TABLE IF EXISTS busy_2007_2016;
CREATE TABLE busy_2007_2016 AS 
SELECT originairportid,
       destairportid,
       year,
       month, 
       dayofweek,
       origin,
       dest, 
       COUNT(*) AS numofflights,
       CONCAT(origin, "_", dest) AS route,
       depdelayminutes,
       arrdelayminutes,
       CASE WHEN AVG(depdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN AVG(depdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       CASE WHEN AVG(arrdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN AVG(arrdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr,      
       CASE WHEN depdelayminutes > 0 THEN "Y"
       ELSE "N" END AS depdelayed,
       CASE WHEN depdelayminutes > 0 THEN "N"
       ELSE "Y" END AS nodepdelay
FROM flights_2007_2016
WHERE origin IN ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC', 'SFO', 'MCO',
                'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
GROUP BY originairportid, destairportid, year, month, dayofweek, origin, dest, depdelayminutes, arrdelayminutes;
