USE [DbVenta]
GO

/****** Object:  View [dbo].[Ventas por Regi�n/Pa�s]    Script Date: 10/17/2024 8:46:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Ventas por Regi�n/Pa�s] AS
SELECT
	o.ShipRegion as [Regi�n],
	o.ShipCountry as [Pa�s],
	SUM(ord.[UnitPrice] * [Quantity]) as Total

FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Orders] o ON ord.OrderID = o.OrderID
GROUP BY o.ShipRegion, o.ShipCountry
GO


