SELECT 
    Categories.CategoryName,
    Products.ProductName,
    Products.QuantityPerUnit,
    Products.UnitsInStock
FROM
    Categories
        INNER JOIN
    Products ON Categories.CategoryID = Products.CategoryID
ORDER BY Categories.CategoryName , Products.ProductName;