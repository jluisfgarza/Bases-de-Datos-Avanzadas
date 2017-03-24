SELECT TOP(1) SUM(od.Quantity * od.unitPrice * (1 - od.discount)) as total
FROM [Order Details] od, Orders o
WHERE od.OrderID = o.OrderID
  AND o.orderDate between '19960101' and '19961231'
ORDER BY total DESC;