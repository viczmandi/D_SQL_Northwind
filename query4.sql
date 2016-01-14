SELECT 
    OrderDetails.OrderID,
    SUM(OrderDetails.UnitPrice * OrderDetails.Quantity - OrderDetails.UnitPrice * OrderDetails.Quantity * OrderDetails.Discount) AS 'OrderTotal'
FROM
    OrderDetails
GROUP BY OrderDetails.OrderID;