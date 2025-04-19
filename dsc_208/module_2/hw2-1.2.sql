/*--------------------------------------------------------------------------------------------------
Question 2: Find all the invoices from the billing country USA, and Canada and sort in
descending order by invoice ID.
a. Return two attributes: invoiceID and Total.
[Output relation cardinality: 147 rows]

Logic:
1. Select InvoiceId and Total from the Invoice table.
2. Filter the invoices where the BillingCountry is either 'USA' or 'Canada'.
3. Sort the results in descending order by InvoiceId.

*/--------------------------------------------------------------------------------------------------
SELECT
InvoiceId,
Total
FROM
invoices
WHERE
BillingCountry IN ('USA', 'Canada')
ORDER BY
InvoiceId DESC;