USE [DbVenta]
GO

/****** Object:  View [dbo].[Ventas por Categoría de Producto]    Script Date: 10/17/2024 8:45:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Ventas por Categoría de Producto] AS
SELECT
	ca.CategoryID as [Categoría],
	pro.ProductID as [Producto],
	SUM([Quantity]) as Total

FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Products] pro ON ord.ProductID = pro.ProductID
JOIN
[Sales].[Categories] ca ON pro.CategoryID = ca.CategoryID
GROUP BY pro.ProductID, ca.CategoryID
GO


