/*
--------------------------------------------------------------------------------------------------
Question 1: (10 points) Compute the total departure delay of each airline across all flights.
    a. Name the output columns name and delay, in that order.
    [Output relation cardinality: 22 rows]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 1
  SELECT c.name,
         SUM(f.departure_delay) AS delay
    FROM FLIGHTS AS f
    JOIN CARRIERS AS c 
      ON f.carrier_id = c.cid
GROUP BY c.name;