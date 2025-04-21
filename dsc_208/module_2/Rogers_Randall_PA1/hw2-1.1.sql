/*
--------------------------------------------------------------------------------------------------
Question 1: Find all the tracks that have a length of 1,000,000 milliseconds or less.
  a. Return only the TrackId column. 
  [Output 3288 rows]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 1
SELECT t.TrackId
  FROM tracks AS t
 WHERE t.Milliseconds <= 1000000;