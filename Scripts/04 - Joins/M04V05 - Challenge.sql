-- You've given two tables (Customers and Orders)
/*
Customers
(PK) CustomerID
     FirstName
     LastName
     Address
     City
     State

Orders
(PK) OrderID
(FK) CustomerID
     OrderDate
     ShipAddress
     ShipCity
     ShipState

-- Display a list of Orders and their respective customers.


-- Result
Rows of data listing OrderId, OrderDate from the Orders table and FirstName, 
LastName from the Customers Table.

Constraits:
- The table contains one or more rows
- There is a one to many relationship between the Customers and Orders table
on the CustomerID column.
*/

-- Start
SELECT *
FROM Orders;

-- Ending
SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID