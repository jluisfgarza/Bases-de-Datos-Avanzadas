select sum(total) as Revenue
FROM dbo.FactSales fs
where year(orderDate) = '1996'
