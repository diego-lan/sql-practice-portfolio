-- Task 2: List customers with their orders
-- Shows customer name, order number, and order date

SELECT c.customerName, o.orderNumber, o.orderDate
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY c.customerName, o.orderDate;
