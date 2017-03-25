declare @country varchar(30)
declare @region varchar(30)

set @region = (
select top 1 de.Region
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997'
group by de.Region
)

SET @country = (
select top 1 Country
from  DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Region = @region
group by de.Country
)

select top 1 de.City
from DimEmployee de, FactSales fs
where de.EmployeeID = fs.EmployeeID and YEAR(fs.OrderDate) = '1997' and de.Country = @country
group by de.City
