SELECT 
    OrderDetails.OrderID,
    OrderDetails.ProductID,
    Products.ProductName,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    (OrderDetails.UnitPrice * OrderDetails.Quantity) * (1 - OrderDetails.Discount) AS 'Total'
FROM
    OrderDetails
        INNER JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY OrderDetails.OrderID, OrderDetails.ProductID;