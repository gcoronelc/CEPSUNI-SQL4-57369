
drop table [DespachosPlanta]
go

select * from [DespachosPlanta];
go

delete from [DespachosPlanta];
go

select 
	o.OrderID, o.CustomerID, 
	s.SupplierID, s.CompanyName SupplierName,
	c.CategoryID, c.CategoryName,
	p.ProductID, p.ProductName, 
	o.ShipCountry, o.ShipCity, 
	od.Quantity, od.UnitPrice * (1-od.Discount) UnitPrice,
	od.Quantity * od.UnitPrice * (1-od.Discount) Subtotal
from Northwind.dbo.Orders o
join Northwind.dbo.[Order Details] od on o.OrderID = od.OrderID 
join Northwind.dbo.Products p on od.ProductID = p.ProductID 
join Northwind.dbo.Categories c on p.CategoryID = c.CategoryID
join Northwind.dbo.Suppliers s on p.SupplierID = s.SupplierID;
GO


select * from ventas01;
select * from ventas02;
select * from ventas03;
go


select * from [Empleados] ;
go


select * from northwind..customers;
go

select * from Tabla1Clientes;
select * from Tabla2Clientes;
select * from Tabla3Clientes;
go


select * from Northwind_DM..VENTAS_FACT;
go

select * from Northwind_DM..TIEMPO;
go




