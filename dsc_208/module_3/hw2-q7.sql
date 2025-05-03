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
-------------------------------------------------------------------------------
*  "40"
*  "Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro
*  #1 Zero
*  (Da Le) Yaleo
*  (I Can't Help) Falling In Love With You
*  (Oh) Pretty Woman
*  (There Is) No Greater Love (Teo Licks)
* 
*
*
*  À Vontade (Live Mix)
*  É Preciso Saber Viver
*  É Uma Partida De Futebol
*  É que Nessa Encarnação Eu Nasci Manga
*  Óia Eu Aqui De Novo
*  Último Pau-De-Arara
*  (1458 rows)
 
******************************************************************************/
