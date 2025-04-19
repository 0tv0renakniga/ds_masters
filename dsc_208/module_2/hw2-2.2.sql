/*
Question 2: (10 points) Find the total capacity of all direct flights between San Diego and San
Francisco on July 1th (i.e., SD to SF or SF to SD).
a. Name the output column totalcapacity.
[Output relation cardinality: 1 row]
*/

/*
Logic:
1. Filter the FLIGHTS table for flights on July 1st (month_id = 7, day_of_month = 1)
2. Filter for flights between San Diego and San Francisco in either direction:
   - Either origin_city = 'San Diego' AND dest_city = 'San Francisco'
   - OR origin_city = 'San Francisco' AND dest_city = 'San Diego'
3. Sum the capacity of all matching flights
4. Return the sum as totalcapacity
*/

SELECT SUM(capacity) as totalcapacity
FROM FLIGHTS
WHERE month_id = 7 AND day_of_month = 1
AND (
    (origin_city = 'San Diego CA' AND dest_city = 'San Francisco CA')
    OR 
    (origin_city = 'San Francisco CA' AND dest_city = 'San Diego CA')
);