/*
Question 1: (10 points) Compute the total departure delay of each airline across all flights.
a. Name the output columns name and delay, in that order.
[Output relation cardinality: 22 rows]
*/

/*
Logic:
1. Join the FLIGHTS table with the CARRIERS table to get airline names
2. Group the results by airline name (CARRIERS.name)
3. Calculate the sum of departure_delay for each airline
4. Select the airline name and the total delay
*/

SELECT 
    c.name,
    SUM(f.departure_delay) AS delay
FROM 
    FLIGHTS f
JOIN 
    CARRIERS c ON f.carrier_id = c.cid
GROUP BY 
    c.name;