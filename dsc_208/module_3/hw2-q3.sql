/******************************************************************************
3. (10 points) For each origin city, find the percentage of departing flights 
shorter than 3 hours. For this question, treat flights with NULL actual_time 
values as longer than 3 hours. Name the output columns origin_city and 
percentage. Order by percentage value, ascending.
	- i. Be careful to handle cities without any flights shorter than 3 
	hours. We will accept either 0 or NULL as the result for those cities.
	- ii. Report percentages as percentages, not decimals (e.g., report 75.
	25 rather than 0.7525).
	- [Output relation cardinality: 327]
******************************************************************************/
-- Query : question 3
  SELECT origin_city,
           CASE WHEN COUNT(*) = 0 THEN 0.0 -- Handle cities with no flights
                ELSE (SUM(CASE WHEN actual_time < 180 THEN 1 ELSE 0 END) * 100.0) / COUNT(*)
            END AS percentage
    FROM flights
GROUP BY origin_city
ORDER BY percentage;
/****************************************************************************** 
*              origin_city             |       percentage
* -------------------------------------+------------------------
*  "Guam TT"                           | 0.00000000000000000000
*  "Pago Pago TT"                      | 0.00000000000000000000
*  "Aguadilla PR"                      |    29.4339622641509434
*  "Anchorage AK"                      |    32.1460373998219056
*  "San Juan PR"                       |    33.8903607091909517
*  "Charlotte Amalie VI"               |    40.0000000000000000
*  "Ponce PR"                          |    41.9354838709677419
*  "Fairbanks AK"                      |    50.6912442396313364
*  "Kahului HI"                        |    53.6649985281130409
*
*
*
*  "Iron Mountain/Kingsfd MI"          |   100.0000000000000000
*  "New Bern/Morehead/Beaufort NC"     |   100.0000000000000000
*  "New Haven CT"                      |   100.0000000000000000
*  "Inyokern CA"                       |   100.0000000000000000
*  "Idaho Falls ID"                    |   100.0000000000000000
*  "Hyannis MA"                        |   100.0000000000000000
*  "Hobbs NM"                          |   100.0000000000000000
*  "Hickory NC"                        |   100.0000000000000000
*  (327 rows)
******************************************************************************/
