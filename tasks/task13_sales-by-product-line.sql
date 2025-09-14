-- Task 13: Sales by product line
-- Purpose: Summarize total sales for each product line

SELECT p.productLine,
       SUM(od.quantityOrdered * od.priceEach) AS totalSales
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productLine
ORDER BY totalSales DESC;
