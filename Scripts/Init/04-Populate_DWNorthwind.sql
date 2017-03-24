
Insert into DimProduct
   select p.productId, p.productName, c.categoryName
   from JC0_Northwind.dbo.products p, JC0_Northwind.dbo.categories c
   where p.categoryID=c.categoryID;

Insert into DimEmployee
   select e.EmployeeID, e.FirstName + ' ' + e.LastName as Name, e.City, e.Country, e.Region,e.HireDate
   from JC0_Northwind.dbo.Employees e;

Insert into DimTime
  select DISTINCT o.OrderDate
  from JC0_Northwind.dbo.Orders o;

Insert into DimCustomer
  select c.CustomerID, c.ContactName, c.City, c.Country, c.Region
  from JC0_Northwind.dbo.Customers c;

Insert into FactSales
  select od.ProductID, o.EmployeeID, o.CustomerID, o.OrderDate ,
    o.orderID, od.quantity, od.unitPrice,
    od.discount,
    od.unitPrice * od.quantity * od.discount ,
    od.unitPrice * od.quantity - od.unitPrice * od.quantity * od.discount
  from JC0_Northwind.dbo.Orders o, JC0_Northwind.dbo.[Order Details] od
  where o.OrderID = od.OrderID;
