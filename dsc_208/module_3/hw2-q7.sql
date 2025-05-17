/******************************************************************************

7. (10 points) List all tracks that were never purchased by any customers. 
	- Return distinct track names. 
	- We only need the name attribute.

	- [Output relation cardinality: 1458]

******************************************************************************/

-- Query : question 7
SELECT DISTINCT t.name
  FROM track AS t
       LEFT JOIN invoice_line AS il 
       ON t.track_id = il.track_id
 WHERE il.track_id IS NULL
 ORDER BY t.name ASC;

/****************************************************************************** 
                                                name                                                
----------------------------------------------------------------------------------------------------
 02 - Sanctuary
 03 - Remember Tomorrow
 06 - Transylvania
 .07%
 07 - Strange World
 08 - Charlotte the Harlot
 100% HardCore
 13 Years Of Grief
...
 Your Soul Today
 You Sent Me Flying / Cherry
 You Shook Me
 You've Got It
 Zero
 ZeroVinteUm
 Zombie Eaters
 Zoo Station
(1458 rows)
 
******************************************************************************/
