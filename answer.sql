
-- PLP DATABASE WEEK 6 ASSIGNMENT
-- SQL JOINS USING CLASSIC MODELS DATABASE

-- QUESTION 1: INNER JOIN
-- Retrieve employee details and their office codes

SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
    ON employees.officeCode = offices.officeCode;


-- QUESTION 2: LEFT JOIN
-- Retrieve product names, vendors and product lines

SELECT
    products.productName,
    products.productVendor,
    products.productLine
FROM products
LEFT JOIN productlines
    ON products.productLine = productlines.productLine;


-- QUESTION 3: RIGHT JOIN
-- Retrieve the first 10 orders and their customer numbers

SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
    ON customers.customerNumber = orders.customerNumber
ORDER BY orders.orderNumber ASC
LIMIT 10;
