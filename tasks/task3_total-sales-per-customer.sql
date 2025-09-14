-- Task 3: Total sales per customer
-- Shows customer name and total purchase amount

SELECT c.customerName, 
       SUM(od.quantityOrdered * od.priceEach) AS total_sales
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY c.customerName
ORDER BY total_sales DESC;
