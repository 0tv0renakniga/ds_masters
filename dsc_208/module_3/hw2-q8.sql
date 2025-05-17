/******************************************************************************

8. (10 points) List the names of all songs that do not belong to the 90s 
Music playlist.
	- Return distinct track names (only the name attribute).
	- [Output relation cardinality: 1943]

******************************************************************************/
-- Query : question 8
SELECT DISTINCT t.name
  FROM track AS t
 WHERE t.track_id 
   NOT IN 
       (SELECT pt.track_id
          FROM playlist AS p
          JOIN playlist_track AS pt 
            ON p.playlist_id = pt.playlist_id
         WHERE p.name LIKE '%90%')
 ORDER BY t.name ASC;

/****************************************************************************** 

                                name                                                             
--------------------------------------------------------------------------------
 "?"
 01 - Prowler
 02 - Sanctuary
 03 - Remember Tomorrow
 04 - Running Free
 05 - Phantom of the Opera
 06 - Transylvania
...
 Your Time Is Gonna Come
 You Sent Me Flying / Cherry
 You Shook Me
 You Sure Love To Ball
 You've Been A Long Time Coming
 You've Got Another Thing Comin'
 Zeca Violeiro
 Zombie Eaters
(1943 rows)

******************************************************************************/
