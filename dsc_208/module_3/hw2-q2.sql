/******************************************************************************

2. (10 points) Find all origin cities that only serve flights shorter than 3 
hours. You can assume that flights with NULL actual_time are not 3 hours or 
more. Name the output column city and sort them. List each city only once in 
the result.

	- [Output relation cardinality: 109]

******************************************************************************/
-- Query : question 2
SELECT DISTINCT origin_city AS city
  FROM flights
EXCEPT SELECT DISTINCT origin_city
  FROM flights
 WHERE actual_time >= 180
 ORDER BY city;  
/****************************************************************************** 
*                 city
* -------------------------------------
 Aberdeen SD
 Abilene TX
 Alpena MI
 Ashland WV
 Augusta GA
 Barrow AK
 Beaumont/Port Arthur TX
 Bemidji MN
 ...
 Visalia CA
 Waco TX
 Waterloo IA
 West Yellowstone MT
 Wichita Falls TX
 Wrangell AK
 Yakutat AK
 Yuma AZ
(109 rows)

******************************************************************************/
