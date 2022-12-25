/*
 Created by Ibrahim Elsheikh
 on 2022/12/07.
 Database: from SECTION 5
 */

USE SEC06;

-- Find the name of sailors who have reserved boat number 103

SELECT sname
FROM Ships.Sailors
WHERE sid IN (22, 31, 74);

------------------------------------
SELECT sname
FROM Ships.Sailors
WHERE sid IN (SELECT sid
              FROM Ships.Reserves
              WHERE bid = 103);


-- Find the sailors with the highest rating
SELECT sname
FROM Ships.Sailors
WHERE rating >= ALL (SELECT rating
                     FROM Ships.Sailors);


SELECT sname
FROM Ships.Sailors
WHERE rating = (SELECT MAX(rating)
                FROM Ships.Sailors);

-- Find the average age of sailors with a rating of 10
SELECT age
FROM Ships.Sailors
WHERE rating = 10;

SELECT AVG(age)
FROM Ships.Sailors
WHERE rating = 10;


-- Find the name and age of the oldest sailor.
SELECT sname, age
FROM Ships.Sailors
WHERE age = (SELECT MAX(age)
             FROM Ships.Sailors);


-- Find the age of the youngest sailor who is eligible to vote for each rating level with at least two sailors.
SELECT sname ,age ,rating
FROM Ships.Sailors
WHERE age = (SELECT MIN(age)
             FROM Ships.Sailors
             WHERE rating = 10);    --TODO : fix it


-- Find the name and age of the oldest sailor who is eligible to vote for each rating level with at least two sailors.











































