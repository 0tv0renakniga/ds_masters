/******************************************************************************

6. (5 points) Express the same query as above, but do so without using a nested 
query. Again, name the output column carrier and order ascending.

	- [Output Cardinality: 4]

******************************************************************************/
-- Query : question 6
SELECT DISTINCT c.name AS carrier
  FROM carriers AS c
  JOIN flights AS f 
    ON c.cid = f.carrier_id
 WHERE f.origin_city LIKE '%San Diego CA%'
       AND f.dest_city LIKE '%San Francisco CA%'
 ORDER BY carrier;

/****************************************************************************** 
        carrier
 -----------------------
 SkyWest Airlines Inc.
 Southwest Airlines Co. 
 United Air Lines Inc.
 Virgin America
 (4 rows)           

******************************************************************************/
