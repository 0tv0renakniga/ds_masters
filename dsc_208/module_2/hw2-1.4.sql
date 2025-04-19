/*
Question 4: Write a query that returns a table consisting of the billing countries and the
number of invoices for each country sorted by the country name.
a. Your output should include BillingCountry attribute and a count column for
the number of invoices.
[Output relation cardinality: 24 rows]
*/

/*
Logic:
1. Select BillingCountry and count of invoices from the Invoice table.
2. Group the results by BillingCountry.
3. Sort the results by BillingCountry.
*/

SELECT
  BillingCountry,
  COUNT(InvoiceId) AS InvoiceCount
FROM
  invoices
GROUP BY
  BillingCountry
ORDER BY
  BillingCountry;