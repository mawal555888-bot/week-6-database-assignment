-- Question 1: INNER JOIN - Employees and Offices
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN - Products and Product Lines
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- Question 3: RIGHT JOIN - Customers and Orders (first 10 orders)
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber
LIMIT 10;
