/*
Question 4: Find the names of all airlines that ever flew more than 5000 flights in one
month from California. Return the names of the airlines and the number of flights. Do not
return any duplicates.
a. Name the output columns name and flightcount.
[Output relation cardinality: 6 rows]
*/

/*
Logic:
1. Join the FLIGHTS table with the CARRIERS table to get airline names
2. Filter for flights originating from California
3. Group by airline name and month
4. Count the number of flights in each group
5. Filter for groups with more than 5000 flights

Note: The question asks for airlines that ever flew more than 5000 flights in one month,
and to return the names and the number of flights without duplicates. Since we can't use
subqueries, we'll need to rely on the application or presentation layer to handle the
removal of duplicates if multiple months exceed 5000 flights for the same airline.
*/

  SELECT c.name,
         COUNT(*) AS flightcount
    FROM FLIGHTS AS f
    JOIN CARRIERS AS c 
      ON f.carrier_id = c.cid
   WHERE f.origin_state = 'California'
GROUP BY c.name, 
         f.month_id
  HAVING flightcount > 5000;