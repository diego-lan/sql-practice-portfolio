-- Task 5: List customer payments ordered by amount
-- Show customerNumber, checkNumber and amount, ordered from highest to lowest

SELECT customerNumber, checkNumber, amount
FROM payments
ORDER BY amount DESC;
