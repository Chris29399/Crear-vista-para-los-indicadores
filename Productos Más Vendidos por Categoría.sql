USE [DbVenta]
GO

/****** Object:  View [dbo].[Productos Más Vendidos por Categoría]    Script Date: 10/17/2024 8:44:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Productos Más Vendidos por Categoría] AS
SELECT
	ord.ProductID as Producto,
	pro.CategoryID as Categoría,
	SUM([Quantity]) as Ventas
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN [Sales].[Products] pro ON ord.ProductID = pro.ProductID
GROUP BY pro.CategoryID, ord.ProductID
GO


