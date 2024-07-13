-- Start
SELECT TOP 10 *
FROM Orders o

-- Juntando 3 Tabelas: Orders, Customers e Employees
-- Mostrando informações conectadas das 3 tabelas
SELECT TOP 10 o.OrderID, c.CompanyName, c.ContactName, e.FirstName, e.Title
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID