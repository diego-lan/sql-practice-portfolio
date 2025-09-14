-- Task 15: Average order value per customer
-- Purpose: Calculate the average order amount per customer

SELECT c.customerNumber,
       c.customerName,
       AVG(od.quantityOrdered * od.priceEach) AS avgOrderValue
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber, c.customerName
ORDER BY avgOrderValue DESC
LIMIT 10;
