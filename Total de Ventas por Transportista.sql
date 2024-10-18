USE [DbVenta]
GO

/****** Object:  View [dbo].[Total de Ventas por Transportista]    Script Date: 10/17/2024 8:45:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Total de Ventas por Transportista] AS
SELECT
	o.ShipVia as Transportista,
	SUM([Quantity] * [UnitPrice]) as Total
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN [Sales].[Orders] o ON ord.OrderID = o.OrderID
GROUP BY o.ShipVia
GO


