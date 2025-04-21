/*
Question 7: Write a query that returns the artist name and total number of tracks of the
Blues bands.
[Output relation cardinality: 5 rows]
*/
-- Query : Question 7
  SELECT ar.Name,
         COUNT(t.TrackId) AS TotalTracks
    FROM artists AS ar
    JOIN albums AS al 
      ON ar.ArtistId = al.ArtistId
    JOIN tracks AS t 
      ON al.AlbumId = t.AlbumId
    JOIN genres AS g 
      ON t.GenreId = g.GenreId
   WHERE g.Name = 'Blues'
GROUP BY ar.Name;