SELECT Customers.FirstName, Customers.LastName, Orders.ServiceBought
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.FirstName, Customers.LastName, SUM(Orders.PurchaseAmount) AS TotalSpent
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.FirstName, Customers. LastName;

SELECT Customers.FirstName, Customers.LastName, Orders.ServiceBought, Orders.PurchaseAmount
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.PurchaseAmount > 100;

SELECT Customers.FirstName, Customers.LastName, SUM(Orders.PurchaseAmount) AS TotalSpent
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.FirstName, Customers.LastName
ORDER BY TotalSpent DESC;

SELECT MONTH(PurchaseDate) AS MonthNumber, SUM(PurchaseAmount) AS TotalRevenue
FROM Orders
GROUP BY MONTH(PurchaseDate)
ORDER BY MonthNumber;

SELECT Customers.FirstName, Customers.LastName, AVG(Orders.PurchaseAmount) AS AverageSpent
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.FirstName, Customers.Lastname;

SELECT Customers.FirstName, Customers.LastName, SUM(Orders.PurchaseAmount) AS TotalSpent, CASE WHEN SUM(Orders.PurchaseAmount) > 100 THEN 'Gold' WHEN SUM(Orders.PurchaseAmount) BETWEEN 50 AND 100 THEN 'Silver' ELSE 'Bronze' END AS MembershipStatus
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.FirstName, Customers.LastName;
