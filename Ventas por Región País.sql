USE [DbVenta]
GO

/****** Object:  View [dbo].[Ventas por Región/País]    Script Date: 10/17/2024 8:46:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Ventas por Región/País] AS
SELECT
	o.ShipRegion as [Región],
	o.ShipCountry as [País],
	SUM(ord.[UnitPrice] * [Quantity]) as Total

FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Orders] o ON ord.OrderID = o.OrderID
GROUP BY o.ShipRegion, o.ShipCountry
GO


