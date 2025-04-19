/*
Question 3: (10 points) Write a query that returns the name and the percentage of canceled flights
out of San Diego for all the airlines that more than 1% of their flights out of San Diego
were canceled. Order the results by the percentage of canceled flights in ascending
order.
a. Name the output columns name and percent, in that order.
[Output relation cardinality: 5 rows]
*/

/*
Logic:
1. Join the FLIGHTS table with the CARRIERS table to get airline names
2. Filter for flights originating from San Diego
3. Group by airline name
4. For each airline, calculate:
   - Total number of flights from San Diego
   - Number of canceled flights from San Diego (where canceled = 1)
   - Percentage of canceled flights (canceled flights / total flights * 100)
5. Filter for airlines with cancellation percentage > 1%
6. Order by cancellation percentage in ascending order
*/

SELECT 
    c.name,
    (SUM(f.canceled) * 100.0 / COUNT(*)) AS percent
FROM 
    FLIGHTS f
JOIN 
    CARRIERS c ON f.carrier_id = c.cid
WHERE 
    f.origin_city = 'San Diego CA'
GROUP BY 
    c.name
HAVING 
    (SUM(f.canceled) * 100.0 / COUNT(*)) > 1
ORDER BY 
    percent ASC;