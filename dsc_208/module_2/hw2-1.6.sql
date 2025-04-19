/*
Question 6: Write a query that returns the customerID for customers that are Blues
listeners. The answer should not contain duplicates.
[Output relation cardinality: 23 rows]
*/

/*
Logic:
1. Join the customers, invoices, invoice_items, tracks, and genres tables.
2. Filter the results to include only customers who have listened to the "Blues" genre.
3. Select the distinct CustomerId.
*/

SELECT DISTINCT
  c.CustomerId
FROM
  customers c
JOIN
  invoices i ON c.CustomerId = i.CustomerId
JOIN
  invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN
  tracks t ON ii.TrackId = t.TrackId
JOIN
  genres g ON t.GenreId = g.GenreId
WHERE
  g.Name = 'Blues';