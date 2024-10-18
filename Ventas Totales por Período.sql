USE [DbVenta]
GO

/****** Object:  View [dbo].[Ventas Totales por Período]    Script Date: 10/17/2024 8:46:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Ventas Totales por Período] AS
SELECT
	YEAR(o.OrderDate) as [Year],
	MONTH(o.OrderDate) as [Month],
	 SUM([UnitPrice] * [Quantity]) as Total
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN Sales.Orders o ON ord.OrderID = o.OrderID
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
GO


