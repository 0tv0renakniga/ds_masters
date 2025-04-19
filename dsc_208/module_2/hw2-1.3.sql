/*
Question 3: Find the albums with 25 or more tracks.
a. Return albumId and count of tracks for each albumId.
[Output relation cardinality: 6 rows]
*/

/*
Logic:
1. Join the Album and Track tables on AlbumId.
2. Group the results by AlbumId.
3. Count the tracks for each album.
4. Filter the results to include only albums with 25 or more tracks using HAVING clause.
5. Return AlbumId and the count of tracks.
*/

SELECT
  AlbumId,
  COUNT(TrackId) AS TrackCount
FROM
  tracks
GROUP BY
  AlbumId
HAVING
  COUNT(TrackId) >= 25;