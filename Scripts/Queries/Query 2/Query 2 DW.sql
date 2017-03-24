SELECT TOP(1) SUM(f.Total) AS qty
FROM FactSales f
WHERE f.orderDate between '19960101' and '19961231'
ORDER BY qty DESC;