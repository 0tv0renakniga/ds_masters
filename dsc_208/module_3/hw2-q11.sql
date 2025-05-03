/******************************************************************************
11. (10 points) Find the list of artists that record at least in 3 different genres. 
Again, return only the artist name.
	- [Output relation cardinality: 7] 
******************************************************************************/
-- Query : question 11
  SELECT name
    FROM (
            SELECT ar.artist_id, ar.name,
	           COUNT(DISTINCT g.genre_id) AS genre_count
              FROM artist AS ar
              JOIN album AS al 
	        ON ar.artist_id = al.artist_id
              JOIN track AS t 
	        ON al.album_id = t.album_id
              JOIN genre AS g 
	        ON t.genre_id = g.genre_id
          GROUP BY ar.artist_id, ar.name
         ) 
	 AS artist_genres
   WHERE genre_count >= 3
ORDER BY name ASC;

/****************************************************************************** 
*         name
* ----------------------
*  Audioslave
*  Battlestar Galactica
*  Gilberto Gil
*  Iron Maiden
*  Jamiroquai
*  Lenny Kravitz
*  Various Artists
*  (7 rows)
******************************************************************************/
