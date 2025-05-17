/******************************************************************************

10. (10 points) List all the playlists that do not have any track in the Rock 
or Blues genres. Return distinct playlist name (only the name attribute)

-[Output relation cardinality: 10]
 
******************************************************************************/
-- Query : question 10
SELECT DISTINCT p.name
  FROM playlist AS p
 WHERE p.playlist_id 
   NOT IN 
       (SELECT DISTINCT pt.playlist_id
          FROM playlist_track AS pt
          JOIN track AS t 
		        ON pt.track_id = t.track_id
          JOIN genre AS g 
		        ON t.genre_id = g.genre_id
         WHERE g.name IN ('Rock', 'Blues'))
 ORDER BY p.name ASC; 

/****************************************************************************** 
            name            
----------------------------
 Audiobooks
 Brazilian Music
 Classical
 Classical 101 - Deep Cuts
 Classical 101 - Next Steps
 Classical 101 - The Basics
 Movies
 Music Videos
 On-The-Go 1
 TV Shows
(10 rows)

******************************************************************************/
