/*
--------------------------------------------------------------------------------------------------
Question 4: Find the names of all airlines that ever flew more than 5000 flights in one
month from California. Return the names of the airlines and the number of flights. Do not
return any duplicates.
    a. Name the output columns name and flightcount.
    [Output relation cardinality: 6 rows]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 4
  SELECT c.name,
         COUNT(*) AS flightcount
    FROM FLIGHTS AS f
    JOIN CARRIERS AS c 
      ON f.carrier_id = c.cid
   WHERE f.origin_state = 'California'
GROUP BY c.name, 
         f.month_id
  HAVING flightcount > 5000
ORDER BY flightcount DESC; 

