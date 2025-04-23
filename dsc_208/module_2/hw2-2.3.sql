/*
--------------------------------------------------------------------------------------------------
Question 3: (10 points) Write a query that returns the name and the percentage of canceled flights
out of San Diego for all the airlines that more than 1% of their flights out of San Diego
were canceled. Order the results by the percentage of canceled flights in ascending
order.
    a. Name the output columns name and percent, in that order.
    [Output relation cardinality: 5 rows]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 3
  SELECT c.name,
         (SUM(f.canceled) * 100.0 / COUNT(*)) AS percent
    FROM FLIGHTS AS f
    JOIN CARRIERS AS c 
      ON f.carrier_id = c.cid
   WHERE f.origin_city = 'San Diego CA'
GROUP BY c.name
  HAVING percent > 1
ORDER BY percent ASC;