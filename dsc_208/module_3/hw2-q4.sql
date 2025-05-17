/******************************************************************************
4. (10 points) List all cities that cannot be reached from San Diego through a 
direct flightbut can be reached with one stop (i.e., with any two flights that 
go through an intermediate city). Do not include San Diego as one of these 
destinations (even though you could get back with two flights).
Name the output column city. Order the output in ascending order by city.

	- [Output relation cardinality: 258]

******************************************************************************/
-- Query : question 4
  WITH DirectFlights AS (
	     SELECT DISTINCT dest_city
		     FROM flights AS f
        WHERE f.origin_city 
		     LIKE '%San Diego CA%'
), 
       OneStopFlights AS (
       SELECT DISTINCT f2.dest_city AS reachable_city
         FROM flights AS f1
         JOIN flights AS f2 
			     ON f1.dest_city = f2.origin_city
        WHERE f1.origin_city LIKE '%San Diego CA%'
              AND f2.dest_city NOT LIKE '%San Diego CA%'
)
SELECT reachable_city AS city
  FROM OneStopFlights
 WHERE reachable_city 
   NOT IN (SELECT dest_city FROM DirectFlights)
 ORDER BY city;
/****************************************************************************** 
               city                
-----------------------------------
 Aberdeen SD
 Abilene TX
 Aguadilla PR
 Akron OH
 Albany GA
 Albany NY
 Alexandria LA
 Allentown/Bethlehem/Easton PA
...
 West Yellowstone MT
 White Plains NY
 Wichita Falls TX
 Wichita KS
 Williston ND
 Wilmington NC
 Worcester MA
 Yuma AZ
(258 rows)

******************************************************************************/
