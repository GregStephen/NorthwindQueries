SELECT od.OrderID, sum((od.UnitPrice * od.Quantity)) as SubTotal
FROM Orders o
	Join [Order Details] od
	ON o.OrderID = od.OrderID
GROUP BY od.OrderID