SELECT TOP(1) SUM(f.Total) AS qty
FROM FactSales f
WHERE f.orderDate between '19970101' and '19971231'
ORDER BY qty DESC;