/*
--------------------------------------------------------------------------------------------------
Question 2: (10 points) Find the total capacity of all direct flights between San Diego and San
Francisco on July 1th (i.e., SD to SF or SF to SD).
    a. Name the output column totalcapacity.
    [Output relation cardinality: 1 row]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 2
SELECT SUM(f.capacity) AS totalcapacity
  FROM FLIGHTS AS f
 WHERE f.month_id = 7 
   AND f.day_of_month = 1
   AND ((f.origin_city = 'San Diego CA' AND f.dest_city = 'San Francisco CA')
       OR (f.origin_city = 'San Francisco CA' AND f.dest_city = 'San Diego CA')
);