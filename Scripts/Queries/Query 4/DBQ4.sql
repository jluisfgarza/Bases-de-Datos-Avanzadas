select top 1 Region
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o, dbo.Employees c
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and o.EmployeeID = c.EmployeeID and year(OrderDate) = '1997'
group by Region
order by sum(quantity * (p.UnitPrice * 1-discount)) desc
