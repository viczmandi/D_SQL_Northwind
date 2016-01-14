SELECT 
    OrderDetails.OrderID,
    OrderDetails.ProductID,
    Products.ProductName,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    OrderDetails.UnitPrice * OrderDetails.Quantity - OrderDetails.UnitPrice * OrderDetails.Quantity * OrderDetails.Discount AS 'Total'
FROM
    OrderDetails
        INNER JOIN
    Products ON OrderDetails.ProductID = Products.ProductID ORDER BY OrderDetails.OrderID;