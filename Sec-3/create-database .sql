CREATE DATABASE SEC03;

USE SEC03;

CREATE SCHEMA SEC03;

CREATE TABLE SEC03.Customer
(
    CustomerID INT NOT NULL PRIMARY KEY ,
    CustomerName char(20) NOT NULL ,
    status char(8) NOT NULL
)
