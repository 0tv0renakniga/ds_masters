/*
--------------------------------------------------------------------------------------------------
Question 3: Find the albums with 25 or more tracks.
  a. Return albumId and count of tracks for each albumId.
  [Output relation cardinality: 6 rows]
--------------------------------------------------------------------------------------------------
*/
-- Query : Question 3
  SELECT t.AlbumId,
         COUNT(t.TrackId) AS TrackCount
    FROM tracks AS t
GROUP BY t.AlbumId
  HAVING COUNT(t.TrackId) >= 25;