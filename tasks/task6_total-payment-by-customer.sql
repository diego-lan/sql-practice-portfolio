-- Task 6: Show total payments made by each customer
-- Display customerNumber and the total amount paid, ordered from highest to lowest

SELECT customerNumber, SUM(amount) AS total_paid
FROM payments
GROUP BY customerNumber
ORDER BY total_paid DESC;
