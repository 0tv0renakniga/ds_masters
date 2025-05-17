/******************************************************************************

5. (5 points) List the names of carriers that operate flights from San Diego to 
San Francisco, CA. Return each carrier's name only once. Use a nested query to 
answer this question.

	- Name the output column carrier. 
	- Order the output ascending by carrier.
	- [Output relation cardinality: 4]

******************************************************************************/
-- Query : question 5
SELECT DISTINCT c.name AS carrier
  FROM carriers AS c
 WHERE c.cid IN 
       (SELECT DISTINCT f.carrier_id
          FROM flights AS f
         WHERE f.origin_city LIKE '%San Diego CA%'
               AND f.dest_city LIKE '%San Francisco CA%')
 ORDER BY carrier;
/****************************************************************************** 
        carrier         
------------------------
 SkyWest Airlines Inc.
 Southwest Airlines Co.
 United Air Lines Inc.
 Virgin America
(4 rows)       

******************************************************************************/
