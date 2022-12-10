USE SEC03;

-- modify Apple to Active
UPDATE SEC03.Customer
SET status ='Active'
WHERE CustomerName = 'Apple';

-- added one raw with values (4,'Alibaba' , 'Active')
INSERT INTO SEC03.Customer (CustomerID, CustomerName, status) VALUES (4,'Alibaba' , 'Active');

-- Delete one raw with values (3 ,'Apple', 'Active')
DELETE FROM SEC03.Customer
WHERE CustomerID = 3;

