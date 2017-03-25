declare @region varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
)

select top 1 de.Country
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country
