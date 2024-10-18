USE [DbVenta]
GO

/****** Object:  View [dbo].[Productos M�s Vendidos]    Script Date: 10/17/2024 8:44:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Productos M�s Vendidos] AS
SELECT
	ProductID as Producto,
	SUM([Quantity]) as Ventas
FROM [DbVenta].[Sales].[OrderDetails]
GROUP BY ProductID
GO


