-- Task 12: Products low in stock
-- Purpose: Identify products with low stock quantity

SELECT productCode,
       productName,
       quantityInStock
FROM products
WHERE quantityInStock < 50
ORDER BY quantityInStock ASC;
