USE [DbVenta]
GO

/****** Object:  View [dbo].[Número de Pedidos Procesados por Empleado]    Script Date: 10/17/2024 8:43:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Número de Pedidos Procesados por Empleado] AS
SELECT
	e.EmployeeID as Empleado,
	COUNT(*) as Pedidos
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Orders] o ON ord.OrderID = o.OrderID
JOIN
[Sales].[Employees] e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
GO


