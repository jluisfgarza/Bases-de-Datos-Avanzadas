SELECT TOP(1) p.ProductName, SUM(od.Quantity) AS qty
FROM Products p, [Order Details] od, Orders o
WHERE od.OrderID = o.OrderID
  AND od.ProductID = p.ProductID
  AND o.orderDate between '19960101' and '19961231'
GROUP BY p.ProductName
ORDER BY qty DESC