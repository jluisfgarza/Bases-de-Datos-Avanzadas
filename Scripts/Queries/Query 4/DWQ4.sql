select TOP 1 Region
from dbo.DimEmployee de, dbo.FactSales fs
where de.EmployeeID = fs.EmployeeID and year(orderDate) = '1997'
group by Region
order by sum(total) desc
