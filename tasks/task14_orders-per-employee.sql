-- Task 14: Orders handled by each employee
-- Purpose: Count how many orders each sales representative handled

SELECT e.employeeNumber,
       e.firstName,
       e.lastName,
       COUNT(o.orderNumber) AS totalOrders
FROM employees e
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY e.employeeNumber, e.firstName, e.lastName
ORDER BY totalOrders DESC;
