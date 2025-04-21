/*
Question 4: Write a query that returns a table consisting of the billing countries and the
number of invoices for each country sorted by the country name.
  a. Your output should include BillingCountry attribute and a count column for
  the number of invoices.
  [Output relation cardinality: 24 rows]
*/
-- Query : Question 4
  SELECT i.BillingCountry,
         COUNT(i.InvoiceId) AS InvoiceCount
    FROM invoices AS i
GROUP BY i.BillingCountry
ORDER BY i.BillingCountry;