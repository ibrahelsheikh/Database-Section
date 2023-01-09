CREATE DATABASE MyDatabase;
go

USE MyDatabase;

CREATE TABLE Person (
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(255) NOT NULL
);

CREATE TABLE Pizzeria (
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL
);

INSERT INTO Person (name, age, gender) VALUES ('Amy', 16, 'female');
INSERT INTO Person (name, age, gender) VALUES ('Ben', 21, 'male');
INSERT INTO Pizzeria (name, location, phone) VALUES ('Pizza Hut', '123 Main St', '123-456-7890');

CREATE TABLE Pizza (
  pizzeria_name VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (pizzeria_name) REFERENCES Pizzeria(name)
);

CREATE TABLE Eats (
  name VARCHAR(255) NOT NULL,
  pizza VARCHAR(255) NOT NULL,
  FOREIGN KEY (name) REFERENCES Person(name),
  FOREIGN KEY (pizza) REFERENCES Pizza(type)
);

INSERT INTO Pizza (pizzeria_name, type, price) VALUES ('Pizza Hut', 'pepperoni', 12);
INSERT INTO Pizza (pizzeria_name, type, price) VALUES ('Pizza Hut', 'sausage', 12);
INSERT INTO Pizza (pizzeria_name, type, price) VALUES ('Little Caesars', 'pepperoni', 9.75);
INSERT INTO Eats (name, pizza) VALUES ('Amy', 'pepperoni');
INSERT INTO Eats (name, pizza) VALUES ('Amy', 'mushroom');

SELECT * FROM Person;
SELECT * FROM Pizzeria;

SELECT * FROM Pizza;
SELECT * FROM Eats;

SELECT Person.name, Pizza.type
FROM Eats
INNER JOIN Person ON Eats.name = Person.name
INNER JOIN Pizza ON Eats.pizza = Pizza.type;
