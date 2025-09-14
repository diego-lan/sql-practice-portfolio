-- Task 11: Top customers by revenue
-- Purpose: Find customers who generated the most revenue

SELECT c.customerNumber,
       c.customerName,
       SUM(od.quantityOrdered * od.priceEach) AS totalRevenue
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber, c.customerName
ORDER BY totalRevenue DESC
LIMIT 10;


