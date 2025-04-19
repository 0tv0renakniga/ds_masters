/*
Question 7: Write a query that returns the artist name and total number of tracks of the
Blues bands.
[Output relation cardinality: 5 rows]
*/

/*
Logic:
1. Join the artists, albums, tracks, and genres tables.
2. Filter the results to include only tracks that belong to the "Blues" genre.
3. Group by artist name.
4. Count the tracks for each artist.
5. Return artist name and the count of tracks.
*/

SELECT
  ar.Name,
  COUNT(t.TrackId) AS TotalTracks
FROM
  artists ar
JOIN
  albums al ON ar.ArtistId = al.ArtistId
JOIN
  tracks t ON al.AlbumId = t.AlbumId
JOIN
  genres g ON t.GenreId = g.GenreId
WHERE
  g.Name = 'Blues'
GROUP BY
  ar.Name;