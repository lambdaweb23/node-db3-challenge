-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName from Products as P
JOIN Categories as C ON P.CategoryId = C.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT OrderID, ShipperName from Orders as O
JOIN Shippers as S on O.ShipperId = S.ShipperId
WHERE OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity FROM OrderDetails
JOIN Products ON OrderDetails.ProductId = Products.ProductID
WHERE OrderId = 10251
ORDER BY ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT OrderId, CustomerName, LastName as EmployeeLastName FROM Orders AS O
JOIN Customers AS C on O.CustomerID = C.CustomerID
JOIN Employees AS E on O.EmployeeId = E.EmployeeId