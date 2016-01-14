SELECT 
    Categories.CategoryName,
    Products.ProductName AS 'CheapestProduct',
    MIN(Products.UnitPrice) AS 'MinCategoryPrice'
FROM
    Categories
        INNER JOIN
    Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName;