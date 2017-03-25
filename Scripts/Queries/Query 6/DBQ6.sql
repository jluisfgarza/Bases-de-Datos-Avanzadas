declare @country varchar(30)
declare @region varchar(30)

SET @region = (
select top 1 Region
from dbo.Products p , dbo.[Order Details] od, dbo.Orders o, dbo.Employees e
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and
o.EmployeeID = e.EmployeeID and year(OrderDate) = '1997'
group by Region
order by sum(quantity * (p.UnitPrice * 1-discount)) desc )


SET @country = (select top 1 Country
from Products p , [Order Details] od, Orders o, Employees e
where p.ProductID = od.ProductID and od.OrderID = o.OrderID and
o.EmployeeID = e.EmployeeID and year(OrderDate) = '1997' and Region = @region
group by Country
order by sum(quantity * (p.UnitPrice * 1-discount)))

select top 1 city
from Products p , [Order Details] od, Orders o, Employees e
where Country = @country
