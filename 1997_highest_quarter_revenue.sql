SELECT TOP(1)
	DATEPART(QUARTER, OrderDate) AS YearQuarter,
	sum(od.UnitPrice * od.Quantity) AS Revenue
FROM Orders o
	JOIN [Order Details] od
	ON o.OrderID = od.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY DATEPART(QUARTER, OrderDate)
ORDER BY 2 DESC