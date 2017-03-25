select TOP 1 ProductName
from dbo.DimProduct dp, dbo.FactSales fs
where dp.ProductID = fs.ProductID and year(orderDate) = '1996'
group by ProductName
order by sum(Quantity) desc
