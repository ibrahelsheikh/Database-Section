/*
 Created by Ibrahim Elsheikh
 on 2022/12/04.
 Database: from SECTION 5
 */

CREATE DATABASE SEC06;

USE SEC06;

CREATE SCHEMA Ships;

CREATE TABLE Ships.Sailors
(
    sid    INT      NOT NULL,
    sname  char(20) NOT NULL,
    rating INT, -- rating is a number from 1 to 10
    age    INT,
    CHECK (rating <= 10 ),
    PRIMARY KEY (sid)

);

CREATE TABLE Ships.Reserves
(
    sid INT  NOT NULL,
    bid INT  NOT NULL,
    day DATE NOT NULL,
    PRIMARY KEY (bid, sid),
    FOREIGN KEY (sid) REFERENCES Ships.Sailors (sid)
);

CREATE TABLE Ships.Boats
(
    bid   INT      NOT NULL,
    bname char(20) NOT NULL,
    color char(10),
    PRIMARY KEY (bid)

);

----- DONE -----