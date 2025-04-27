CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Location VARCHAR(50)
);
INSERT INTO Customers (CustomerID, FirstName, LastName, Location) VALUES
(1, 'Carlos', 'Ortiz', 'New York'),
(2, 'Sarah', 'Miller', 'Chicago'),
(3, 'John', 'Cruz', 'Miami'),
(4, 'Emily', 'Smith', 'Dallas');
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ServiceBought VARCHAR(100),
    PurchaseAmount DECIMAL(10,2),
    PurchaseDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderID, CustomerID, ServiceBought, PurchaseAmount, PurchaseDate) VALUES
(1, 1, 'Oil Change', 49.99, '2025-04-01'),
(2, 2, 'Tire Rotation', 29.99, '2025-04-02'),
(3, 1, 'Battery Replacement', 139.99, '2025-04-05'),
(4, 3, 'Brake Inspection', 59.99, '2025-04-03'),
(5, 4, 'Radiator Flush', 89.99, '2025-04-06');
