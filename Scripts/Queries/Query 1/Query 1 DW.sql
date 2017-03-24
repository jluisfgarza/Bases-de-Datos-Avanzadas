SELECT TOP(1) p.ProductName, SUM(f.Quantity) AS qty
FROM DimProduct p, FactSales f
WHERE f.orderDate between '19960101' and '19961231' and f.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY qty DESC;