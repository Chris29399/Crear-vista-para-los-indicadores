USE [DbVenta]
GO

/****** Object:  View [dbo].[Clientes Atendidos por Empleado]    Script Date: 10/17/2024 8:41:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Clientes Atendidos por Empleado] AS
SELECT
	EmployeeID as Empleado,
	COUNT(CustomerID) as Clientes
FROM [DbVenta].[Sales].[Orders]
GROUP BY EmployeeID
GO