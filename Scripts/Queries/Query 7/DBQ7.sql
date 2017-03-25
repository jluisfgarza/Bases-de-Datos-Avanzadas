select sum((od.UnitPrice*od.Quantity)*(1-od.Discount)) as Revenue
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and year(OrderDate) = '1997'
order by Revenue desc
