-- Task 1: List all customers from the USA

SELECT customerNumber, customerName, country
FROM customers
WHERE country = 'USA';