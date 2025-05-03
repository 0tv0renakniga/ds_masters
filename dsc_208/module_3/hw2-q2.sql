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
 WHERE actual_time >= 180;   
/****************************************************************************** 
*                 city
* -------------------------------------
*  "Elko NV"
*  "Helena MT"
*  "Twin Falls ID"
*  "Barrow AK"
*  "Idaho Falls ID"
*  "Aberdeen SD"
*  "La Crosse WI"
*  "Carlsbad CA"
*  "Visalia CA"
*
*
*
*  "Texarkana AR"
*  "Muskegon MI"
*  "Mosinee WI"
*  "Hays KS"
*  "Petersburg AK"
*  "Joplin MO"
*  "Erie PA"
*  "Kalamazoo MI"
*  "Bethel AK"
*  (109 rows)
******************************************************************************/
