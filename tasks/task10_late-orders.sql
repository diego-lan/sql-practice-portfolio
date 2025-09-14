-- Task 10: Late orders
-- Purpose: Identify orders that are past their required date but not yet shipped

SELECT o.orderNumber,
       o.orderDate,
       o.requiredDate,
       o.status,
       c.customerName
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber
WHERE o.status <> 'Shipped'
  AND o.requiredDate < CURDATE()
ORDER BY o.requiredDate ASC;
