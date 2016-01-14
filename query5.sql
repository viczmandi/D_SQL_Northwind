SELECT 
    Orders.ShippedDate,
    Categories.CategoryName,
    Products.ProductName,
    SUM(OrderDetails.UnitPrice * OrderDetails.Quantity - OrderDetails.UnitPrice * OrderDetails.Quantity * OrderDetails.Discount) AS 'ProductSales'
FROM
    Orders
        INNER JOIN
    OrderDetails ON Orders.OrderID = OrderDetails.OrderID
        INNER JOIN
    Products ON Products.ProductID = OrderDetails.ProductID
        INNER JOIN
    Categories ON Categories.CategoryID = OrderDetails.ProductID
GROUP BY Products.ProductName , YEAR(Orders.ShippedDate);