/*
 Created by Ibrahim Elsheikh
 on 2022/12/06.
 Database: from SECTION 5
 */

USE SEC05;

INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (22, 'Dustin', 7, 45);
INSERT INTO Ships.Sailors (SID, sname, RATING, AGE)
VALUES (29, 'Burtus', 1, 33);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (31, 'Lubber', 8, 55);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (32, 'Andy', 8, 25);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (58, 'Rusty', 10, 35);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (64, 'Horatio', 7, 35);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (71, 'Zorba', 10, 16);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (74, 'Horatio', 9, 35);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (85, 'Art', 3, 25);
INSERT INTO Ships.Sailors (SID, SNAME, RATING, AGE)
VALUES (95, 'Bob', 3, 63);


INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (22, 101, '10-10-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (22, 102, '10-10-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (22, 103, '10-08-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (22, 104, '10-07-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (31, 102, '11-10-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (31, 103, '11-06-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (31, 104, '11-12-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (64, 101, '09-05-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (64, 102, '09-09-1998');
INSERT INTO Ships.Reserves (SID, BID, DAY)
VALUES (74, 103, '09-09-1998');


INSERT INTO Ships.Boats (BID, BNAME, COLOR)
VALUES (101, 'Interlake', 'BLue');
INSERT INTO Ships.Boats (BID, BNAME, COLOR)
VALUES (102, 'Interlake', 'Red');
INSERT INTO Ships.Boats (BID, BNAME, COLOR)
VALUES (103, 'Clipper', 'Red');
INSERT INTO Ships.Boats (BID, BNAME, COLOR)
VALUES (104, 'Marine', 'Red');

------- Done ----------