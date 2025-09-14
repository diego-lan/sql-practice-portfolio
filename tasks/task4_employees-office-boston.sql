-- Task 3: Employees office Boston
-- Shows employee number, fisrt name, last name and job title of employees working in Boston offices


SELECT employeeNumber, firstName, lastName, jobTitle
FROM employees
WHERE officeCode = (
    SELECT officeCode 
    FROM offices 
    WHERE city = 'Boston'
);
