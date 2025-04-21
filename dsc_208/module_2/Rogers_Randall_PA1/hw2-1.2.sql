/*
--------------------------------------------------------------------------------------------------
Question 2: Find all the invoices from the billing country USA, and Canada and sort in
descending order by invoice ID.
  a. Return two attributes: invoiceID and Total.
  [Output relation cardinality: 147 rows]
--------------------------------------------------------------------------------------------------
*/ 
-- Query : Question 2
  SELECT i.InvoiceId,
         i.Total
    FROM invoices AS i
   WHERE i.BillingCountry IN ('USA', 'Canada')
ORDER BY i.InvoiceId DESC;