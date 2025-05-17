/******************************************************************************

9. (10 points) List the artists who did not record any tracks of the Blues 
genre. Return distinct artist names (only the name attribute).

	- [Output relation cardinality: 270]

******************************************************************************/
-- Query : question 9
SELECT DISTINCT ar.name
  FROM artist AS ar
       LEFT JOIN 
       (SELECT DISTINCT al.artist_id
          FROM album AS al
          JOIN track AS t 
            ON al.album_id = t.album_id
          JOIN genre AS g 
            ON t.genre_id = g.genre_id
         WHERE g.name LIKE '%Blues%') AS blues_artists 
       ON ar.artist_id = blues_artists.artist_id
 WHERE blues_artists.artist_id IS NULL
 ORDER BY ar.name ASC;

/****************************************************************************** 
                                   name
-----------------------------------------------------------------------------
 Aaron Copland & London Symphony Orchestra
 Aaron Goldberg
 Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
 Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
 Academy of St. Martin in the Fields & Sir Neville Marriner
 Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
 Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
 Accept

 Vinicius, Toquinho & Quarteto Em Cy
 Whitesnake
 Wilhelm Kempff
 Xis
 Yehudi Menuhin
 Youssou N'Dour
 Yo-Yo Ma
 Zeca Pagodinho
(270 rows)

******************************************************************************/
