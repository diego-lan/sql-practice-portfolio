-- Task 8: Top-selling products
-- Purpose: Identify the best-selling products based on total order quantity

SELECT p.productCode,
       p.productName,
       SUM(od.quantityOrdered) AS totalQuantitySold
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName
ORDER BY totalQuantitySold DESC
LIMIT 10;
