USE SEC05;

CREATE TABLE Ibrahim
(
    -- Data types

    name INT ,
    age DECIMAL(1,2),
    number Float ,
    id  REAL,
    lastname VARCHAR(10),
    message CHAR(10),
    date DATE,
    time TIME,
    datetime DATETIME
)

-- Type create
-- DEFAULT Value
-- check constraint
CREATE TYPE SSN_type FROM CHAR(9);

CREATE TABLE table_name
(
    column_name SSN_type NOT NULL,
    column_2_name INT DEFAULT 0,
    column_3_name INT
    CHECK (column_3_name > 0)
);

-----------------------------------------------------------
-- DISTINCT

SELECT DISTINCT bname FROM Ships.Boats;

--Question :Find the sailors whose names start with B.\

SELECT *
FROM Ships.Sailors
WHERE sname LIKE 'B%';

--



