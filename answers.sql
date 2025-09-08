-- ================================
-- Question 1 🧑‍💼
-- Retrieve employee details along with their office location using INNER JOIN
-- INNER JOIN returns only rows that have matching officeCode in both employees and offices
-- ================================

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- ================================
-- Question 2 🛍️
-- Retrieve product details along with their product line using LEFT JOIN
-- LEFT JOIN returns all products, even if no match exists in productlines
-- ================================

SELECT 
    p.productName,
    p.productVendor,
    pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- ================================
-- Question 3 📦
-- Retrieve the first 10 orders with customer details using RIGHT JOIN
-- RIGHT JOIN ensures all orders are retrieved, even if some customers are missing
-- ================================

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
