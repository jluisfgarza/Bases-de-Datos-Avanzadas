select TOP 1 ProductName
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and year(OrderDate) = '1996'
group by ProductName
order by sum(quantity) desc
