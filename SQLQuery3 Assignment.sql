SELECT COUNT(*) AS CustomerRows FROM Customers;
SELECT COUNT(*) AS OrderRows FROM Orders;
SELECT Top 5 * FROM Customers;
SELECT TOP 5 * FROM Orders;
SELECT
c. CustomerName,
o. OrderID,
o. OrderDate,
o. Product,
o. Quantity,
o. SalesAmount
FROM Customers AS c
INNER JOIN Orders As o
ON c.CustomerID = o.CustomerID
ORDER BY o.OrderDate, o.OrderID;

SELECT
c. CustomerID,
c. CustomerName,
SUM(o.SalesAmount) AS TotalSales
FROM Customers AS c
 INNER JOIN Orders AS o
 ON c.CustomerID = o.CustomerID
 GROUP BY c.CustomerID, c.CustomerName
 ORDER BY TotalSales DESC;