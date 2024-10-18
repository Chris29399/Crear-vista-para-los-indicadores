USE [DbVenta]
GO

/****** Object:  View [dbo].[Productividad de Empleados]    Script Date: 10/17/2024 8:44:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Productividad de Empleados] AS
SELECT
	e.EmployeeID as Empleado,
	SUM([UnitPrice] * [Quantity]) as Total
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Orders] o ON ord.OrderID = o.OrderID
JOIN
[Sales].[Employees] e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
GO


