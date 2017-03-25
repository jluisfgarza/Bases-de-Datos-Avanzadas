/* El estatuto E01 extrae la informacion de products de la NorthwindDB y la
carga en la tabla DIMemployee en DWNorthwind */
/*E01:*/Insert into DimProduct
   select p.productId, p.productName, c.categoryName
   from JC0_Northwind.dbo.products p, JC0_Northwind.dbo.categories c
   where p.categoryID=c.categoryID;

 /* El estatuto E02 extrae la informacion de empleado de la NorthwindDB y la
 carga en la tabla DIMemployee en DWNorthwind, además transforma el nombre del
 empleado a un representacion de un solo string */
/*E02:*/Insert into DimEmployee
   select e.EmployeeID, e.FirstName + ' ' + e.LastName as Name, e.City,
   e.Country, e.Region,e.HireDate
   from JC0_Northwind.dbo.Employees e;

 /* El estatuto E03 extrae la informacion de orders dates de la NorthwindDB y la
 carga en la tabla DIMemployee en DWNorthwind */
/*E03:*/Insert into DimTime
  select DISTINCT o.OrderDate
  from JC0_Northwind.dbo.Orders o;

/* El estatuto E04 extrae la informacion de customer de la NorthwindDB y la
carga en la tabla DIMemployee en DWNorthwind */
/*E04:*/Insert into DimCustomer
  select c.CustomerID, c.ContactName, c.City, c.Country, c.Region
  from JC0_Northwind.dbo.Customers c;

/* El estatuto E05 contiene las llaves primarias y atributos medibles */
/*E05:*/Insert into FactSales
  select od.ProductID, o.EmployeeID, o.CustomerID, o.OrderDate ,
    o.orderID, od.quantity, od.unitPrice,
    od.discount,
    od.unitPrice * od.quantity * od.discount ,
    od.unitPrice * od.quantity - od.unitPrice * od.quantity * od.discount
  from JC0_Northwind.dbo.Orders o, JC0_Northwind.dbo.[Order Details] od
  where o.OrderID = od.OrderID;
