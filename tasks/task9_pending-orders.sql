-- Task 9: Pending orders
-- Purpose: Find all orders that are not yet delivered (status still pending).

SELECT o.orderNumber,
       o.orderDate,
       o.requiredDate,
       o.status,
       c.customerName
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber
WHERE o.status = 'In Process'
ORDER BY o.requiredDate ASC;
