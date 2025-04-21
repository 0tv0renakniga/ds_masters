/*
Question 5: Write a query that returns a table consisting of the customers and the total
amount of money spent by each customer.
  a. Output customerID attribute and total money spent.
  [Output relation cardinality: 59 rows]
*/
-- Query : Question 5
  SELECT c.CustomerId,
         SUM(i.Total) AS TotalSpent
    FROM customers AS c
    JOIN invoices AS i 
      ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId;