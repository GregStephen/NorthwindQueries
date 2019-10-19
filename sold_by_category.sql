SELECT c.CategoryName,
	sum(od.Quantity) AS TotalSold,
	sum((od.Quantity * od.UnitPrice)) AS TotalCost
FROM Categories c
	JOIN Products p
	ON c.CategoryID = p.CategoryID
	JOIN [Order Details] od
	ON p.ProductID = od.ProductID
GROUP BY c.CategoryName
