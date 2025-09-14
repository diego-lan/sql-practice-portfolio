-- Task 7: List customers and their orders
-- Show customerNumber, customerName and orderNumber

SELECT c.customerNumber, c.customerName, o.orderNumber
FROM customers c
JOIN orders o
    ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber, o.orderNumber;
