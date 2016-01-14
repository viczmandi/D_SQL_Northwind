SELECT 
    Orders.ShipName,
    Orders.ShipAddress,
    Orders.ShipCity,
    Orders.ShipRegion,
    Orders.ShipPostalCode,
    Orders.ShipCountry,
    Customers.CustomerID,
    Customers.CompanyName AS 'CustomerName',
    Customers.Address,
    Customers.City,
    Customers.Region,
    Customers.PostalCode,
    Customers.Country,
    CONCAT(Employees.FirstName,
            ' ',
            Employees.LastName) AS 'Salesperson',
    Orders.OrderID,
    Orders.OrderDate,
    Orders.RequiredDate,
    Orders.ShippedDate,
    Orders.ShipName,
    OrderDetails.ProductID,
    Products.ProductName,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    OrderDetails.UnitPrice * OrderDetails.Quantity - OrderDetails.UnitPrice * OrderDetails.Quantity * OrderDetails.Discount AS 'Total',
    Orders.Freight
FROM
    Orders
        INNER JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
        INNER JOIN
    OrderDetails ON Orders.OrderID = OrderDetails.OrderID
        INNER JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
        INNER JOIN
    Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Customers.CustomerID;