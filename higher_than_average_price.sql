SELECT *
FROM Products
WHERE UnitPrice >= (SELECT AVG(UnitPrice) FROM products)
ORDER BY UnitPrice DESC
