/*
 example-Basics.sql by Ibrahim Elsheikh from https://www.sqlservertutorial.net/
 name : Ibrahim Elsheikh
 github: https://github.com/ibrahelsheikh
 Data : 04/12/2019
 time : 12:00 PM
 */

USE BikeStores;

-- SQL Server Basics --
-- https://www.sqlservertutorial.net/sql-server-basics/sql-server-select/

-- SELECT statement --
-- Question : show first_name and last_name from customer table

SELECT
    first_name,
    last_name
FROM
    sales.customers;

--SELECT statement --
-- Question  : show first_name and last_name and email

SELECT
    first_name,
    last_name,
    email
FROM sales.customers;

-- SELECT statement --
-- Question : show all in customers table

SELECT
    *
FROM
    sales.customers;

-- SELECT statement --
-- Question : show all where state = 'CA'
SELECT
    *
FROM
    sales.customers
WHERE
    state = 'CA';

-- SELECT statement --
-- Question : show all where state = 'CA' and order it by name
SELECT
    *
FROM
    sales.customers
WHERE
    state = 'CA'
ORDER BY
    first_name;

-- SELECT statement --
-- Question : show all where state ='CA' Then GROUP BY city ORDER BY city

SELECT
    city ,
    count (*)
FROM
    sales.customers
WHERE
    state ='CA'
GROUP BY
    city
ORDER BY
    city;

-- SELECT statement --
-- Question : show all where state ='CA' Then GROUP BY city ORDER BY city
SELECT
    city ,
    COUNT (*)
FROM
    sales.customers
WHERE
    state ='CA'
GROUP BY
    city
HAVING
    COUNT (*) > 8
ORDER BY
    city;

-- ORDER BY statement--
-- QUESTION : Sort a result set by one column in ascending order
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    first_name;

-- ORDER BY statement--
-- QUESTION : Sort a result set by one column in descending order
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    first_name DESC;


-- ORDER BY statement--
-- QUESTION : Sort a result set by multiple columns
SELECT
    city ,
    first_name ,
    last_name
FROM
    sales.customers
ORDER BY
    city ,
    first_name;

-- ORDER BY statement --
-- QUESTION : Sort a result set by multiple columns in differanet orders
SELECT
    city ,
    first_name ,
    last_name
FROM
    sales.customers
ORDER BY
    city DESC ,
    first_name ;

-- ORDER BY statement --
-- QUESTION : Sort a result set by an expression
SELECT
    first_name ,
    last_name
FROM
    sales.customers
ORDER BY
    LEN(first_name) DESC;


-- ORDER BY statement --
-- QUESTION : Sort a result set by a column that is not in the select list
SELECT
    first_name ,
    last_name ,
FROM
    sales.customers
ORDER BY
    state ;

-- ORDER BY statement --
-- QUESTION : Sort by ordinal positions of columns
SELECT
    first_name ,
    last_name
FROM
    sales.customers
ORDER BY
    1 ,
    2 ;









































