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
         NOT IN (
                 SELECT pt.track_id
                   FROM playlist AS p
                   JOIN playlist_track AS pt ON p.playlist_id = pt.playlist_id
                  WHERE p.name LIKE '%90%'
                )
ORDER BY t.name ASC;

/****************************************************************************** 

                                    name
-------------------------------------------------------------------------------
* "40"
* "?"
* "Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro
* #1 Zero
* #9 Dream
* 'Round Midnight
* (Anesthesia) Pulling Teeth
* (Oh) Pretty Woman
* 
* Água E Fogo
* Água de Beber
* É Fogo
* É que Nessa Encarnação Eu Nasci Manga
* Étude 1, In C Major - Preludio (Presto) - Liszt
* Óculos
* Óia Eu Aqui De Novo
* Último Pau-De-Arara
* (1943 rows)

******************************************************************************/
