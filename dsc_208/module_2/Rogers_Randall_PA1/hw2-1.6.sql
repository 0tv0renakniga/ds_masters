/*
Question 6: Write a query that returns the customerID for customers that are Blues
listeners. The answer should not contain duplicates.
[Output relation cardinality: 23 rows]
*/
-- Query : Question 6
SELECT DISTINCT c.CustomerId
  FROM customers AS c
  JOIN invoices AS i 
    ON c.CustomerId = i.CustomerId
  JOIN invoice_items AS ii 
    ON i.InvoiceId = ii.InvoiceId
  JOIN tracks AS t 
    ON ii.TrackId = t.TrackId
  JOIN genres AS g 
    ON t.GenreId = g.GenreId
 WHERE g.Name = 'Blues';