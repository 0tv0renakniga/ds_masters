/******************************************************************************

1. (10 points) For each origin city, find the destination city (or cities) with
the longest direct flight. By direct flight, we mean a flight with no 
intermediate stops. Judge the longest flight in time, not distance.

	- Name the output columns origin_city and dest_city, with time
	representing the flight time between them. Do not include duplicates of
       	the same origin/destination city pair. Order the result by origin_city 
	and then dest_city (ascending, i.e. alphabetically).

	[Output relation cardinality: 334 rows]

******************************************************************************/
-- Query : question 1
    WITH OriginMaxTime AS (
         SELECT origin_city,
                MAX(actual_time) OVER (PARTITION BY origin_city) AS max_actual_time,
                origin_city AS o_city, -- Alias for clarity in the outer query
                dest_city AS d_city,   -- Alias for clarity in the outer query
                actual_time AS a_time   -- Alias for clarity in the outer query
           FROM flights
)
  SELECT DISTINCT o_city AS origin_city,
                  d_city AS dest_city,
                  a_time AS time
    FROM OriginMaxTime
   WHERE a_time = max_actual_time
ORDER BY origin_city,
         dest_city;

/******************************************************************************
*              origin_city             |         dest_city          | time
* -------------------------------------+----------------------------+------
*  "Aberdeen SD"                       | "Minneapolis MN"           |  106
*  "Abilene TX"                        | "Dallas/Fort Worth TX"     |  111
*  "Adak Island AK"                    | "Anchorage AK"             |  471
*  "Aguadilla PR"                      | "New York NY"              |  368
*  "Akron OH"                          | "Atlanta GA"               |  408
*  "Albany GA"                         | "Atlanta GA"               |  243
*  "Albany NY"                         | "Atlanta GA"               |  390
*  "Albuquerque NM"                    | "Houston TX"               |  492
*  "Alexandria LA"                     | "Atlanta GA"               |  391
*  "Allentown/Bethlehem/Easton PA"     | "Atlanta GA"               |  456
*  "Alpena MI"                         | "Detroit MI"               |   80
*
*
*
*  "West Palm Beach/Palm Beach FL"     | "Dallas/Fort Worth TX"     |  493
*  "West Yellowstone MT"               | "Salt Lake City UT"        |  115
*  "White Plains NY"                   | "Atlanta GA"               |  455
*  "Wichita Falls TX"                  | "Dallas/Fort Worth TX"     |  143
*  "Wichita KS"                        | "Houston TX"               |  487
*  "Williston ND"                      | "Houston TX"               |  469
*  "Wilmington NC"                     | "Atlanta GA"               |  181
*  "Worcester MA"                      | "Fort Lauderdale FL"       |  245
*  "Wrangell AK"                       | "Ketchikan AK"             |   51
*  "Wrangell AK"                       | "Petersburg AK"            |   51
*  "Yakutat AK"                        | "Juneau AK"                |   68
*  "Yuma AZ"                           | "Phoenix AZ"               |   93
*  (334 rows)
******************************************************************************/
