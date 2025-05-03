/******************************************************************************
9. (10 points) List the artists who did not record any tracks of the Blues 
genre. Return distinct artist names (only the name attribute).
	- [Output relation cardinality: 270]
******************************************************************************/
-- Query : question 9
  SELECT DISTINCT ar.name
    FROM artist AS ar
   WHERE ar.artist_id 
         NOT IN (
                 SELECT DISTINCT al.artist_id
                   FROM album AS al
                   JOIN track AS t 
		     ON al.album_id = t.album_id
                   JOIN genre AS g 
		     ON t.genre_id = g.genre_id
                  WHERE g.name LIKE '%Blues%'
                 )
ORDER BY ar.name ASC;

/****************************************************************************** 
*                                   name
* -----------------------------------------------------------------------------
* A Cor Do Som
* AC/DC
* Aaron Copland & London Symphony Orchestra
* Aaron Goldberg
* Academy of St. Martin in the Fields & Sir Neville Marriner
* Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
* Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
* Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart                   
*
* Vinícius E Qurteto Em Cy
* Whitesnake
* Wilhelm Kempff
* Xis
* Yehudi Menuhin
* Yo-Yo Ma
* Youssou N'Dour
* Zeca Pagodinho
* (270 rows) 
******************************************************************************/
