SELECT 
    Products.ProductName, Products.UnitPrice
FROM
    Products
WHERE
    Products.UnitPrice > (SELECT 
            AVG(Products.UnitPrice)
        FROM
            Products)
ORDER BY Products.UnitPrice;