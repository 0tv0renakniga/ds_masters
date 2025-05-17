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
  WITH MaxTimesByRoute AS (
       SELECT origin_city,
              dest_city,
              MAX(actual_time) AS time
         FROM flights
        GROUP BY origin_city, 
                 dest_city
),
       MaxTimesByOrigin AS (
       SELECT origin_city,
              MAX(time) AS max_time
         FROM MaxTimesByRoute
        GROUP BY origin_city
)
SELECT r.origin_city,
       r.dest_city,
       r.time
  FROM MaxTimesByRoute AS r
  JOIN MaxTimesByOrigin AS o 
    ON r.origin_city = o.origin_city AND r.time = o.max_time
 ORDER BY r.origin_city, 
       r.dest_city;
/******************************************************************************
            origin_city            |        dest_city         | time 
-----------------------------------+--------------------------+------
 Aberdeen SD                       | Minneapolis MN           |  106
 Abilene TX                        | Dallas/Fort Worth TX     |  111
 Adak Island AK                    | Anchorage AK             |  471
 Aguadilla PR                      | New York NY              |  368
 Akron OH                          | Atlanta GA               |  408
 Albany GA                         | Atlanta GA               |  243
 Albany NY                         | Atlanta GA               |  390
 ...
 Wichita KS                        | Houston TX               |  487
 Williston ND                      | Houston TX               |  469
 Wilmington NC                     | Atlanta GA               |  181
 Worcester MA                      | Fort Lauderdale FL       |  245
 Wrangell AK                       | Ketchikan AK             |   51
 Wrangell AK                       | Petersburg AK            |   51
 Yakutat AK                        | Juneau AK                |   68
 Yuma AZ                           | Phoenix AZ               |   93
(334 rows)

******************************************************************************/
