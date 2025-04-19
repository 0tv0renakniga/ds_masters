/*--------------------------------------------------------------------------------------------------
Question 1: Find all the tracks that have a length of 1,000,000 milliseconds or less.
a. Return only the TrackId column. [Output 3288 rows]

Logic:
1. Select only the TrackId column from the tracks table
2. Filter the results to include only tracks where the Milliseconds value is less than or equal to 1,000,000
3. This is a simple filter operation that doesn't require joins, grouping, or aggregation
*/--------------------------------------------------------------------------------------------------

SELECT TrackId
FROM tracks
WHERE Milliseconds <= 1000000;