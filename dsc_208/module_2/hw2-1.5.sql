/*
Question 5: Write a query that returns a table consisting of the customers and the total
amount of money spent by each customer.
a. Output customerID attribute and total money spent.
[Output relation cardinality: 59 rows]
*/

/*
Logic:
1. Join the customers and invoices tables on CustomerId.
2. Group the results by CustomerId.
3. Sum the Total from the invoices table for each customer.
4. Return CustomerId and the total amount spent.
*/

SELECT
  c.CustomerId,
  SUM(i.Total) AS TotalSpent
FROM
  customers c
JOIN
  invoices i ON c.CustomerId = i.CustomerId
GROUP BY
  c.CustomerId;