/*
 Created by Ibrahim Elsheikh
 on 2022/12/11.
 Database: from SECTION 4
 */

CREATE DATABASE SEC04;

USE SEC04;

CREATE SCHEMA company;

CREATE TABLE company.Employee
(
    SSN       CHAR(9) NOT NULL,  --TODO : you can change it to char
    Fname     CHAR(20),
    Lname     CHAR(20),
    address   CHAR(120),
    gender    CHAR(30),
    DOB       DATE,
    Super_SSN INT,
    PRIMARY KEY (SSN)
);

CREATE TABLE company.Department
(
    Dnumber        INT NOT NULL,
    Dname          CHAR(30) NOT NULL ,
    Mgr_SSN        INT NOT NULL ,
    Mgr_start_date DATE,
    PRIMARY KEY (Dnumber),
    FOREIGN KEY (Mgr_SSN) REFERENCES company.Employee (SSN)
);

CREATE TABLE company.Project
(
    Pnumber INT NOT NULL ,
    Pname INT NOT NULL ,
    Ploction CHAR(130),
    Dno INT NOT NULL ,
    PRIMARY KEY (Pnumber),
    FOREIGN KEY (Dno) REFERENCES company.Department(Dnumber)
);

CREATE TABLE company.Dept_location
(
    Dnumber   INT NOT NULL,
    Dolcation VARCHAR(20),
    PRIMARY KEY (Dnumber),
    FOREIGN KEY (Dnumber) REFERENCES company.Department (Dnumber)
);


CREATE TABLE company.Works_on
(
    ESSN  INT NOT NULL,    --TODO : you can change it to char
    Pno   INT     NOT NULL,
    Hours DECIMAL(3,1),
    PRIMARY KEY (ESSN),
    FOREIGN KEY (ESSN) REFERENCES company.Employee (SSN),
    FOREIGN KEY (Pno) REFERENCES company.Project(Pnumber)
);


CREATE TABLE company.dependant
(
    ESSN           INT NOT NULL,    --TODO : you can change to char
    Dependant_name CHAR(20) NOT NULL,
    Bdate   date,
    PRIMARY KEY (ESSN, Dependant_name),
    FOREIGN KEY (ESSN) REFERENCES company.Employee (SSN)
);
