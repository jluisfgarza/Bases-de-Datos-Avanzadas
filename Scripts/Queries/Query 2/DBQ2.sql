select sum(quantity * (p.UnitPrice * 1-discount)) as Revenue
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and year(OrderDate) = '1996'
order by Revenue desc
