USE [DbVenta]
GO

/****** Object:  View [dbo].[Número de Órdenes Enviadas por Transportista]    Script Date: 10/17/2024 8:43:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Número de Órdenes Enviadas por Transportista] AS
SELECT
	o.ShipVia as Transportista,
	SUM([Quantity]) as Ordenes
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN [Sales].[Orders] o ON ord.OrderID = o.OrderID
GROUP BY o.ShipVia
GO


