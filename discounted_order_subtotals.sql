SELECT o.OrderID, 
	CAST(sum((od.UnitPrice * od.Quantity) - ((od.UnitPrice * od.Quantity) * od.Discount)) AS decimal(8,2)) AS DiscountedSubTotal
FROM Orders o
	JOIN [Order Details] od
	ON o.OrderID = od.OrderID
GROUP BY o.OrderID