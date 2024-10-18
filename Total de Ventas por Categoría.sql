USE [DbVenta]
GO

/****** Object:  View [dbo].[Total de Ventas por Categoría]    Script Date: 10/17/2024 8:45:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Total de Ventas por Categoría] AS
SELECT
	ca.CategoryID as [Categoría],
	SUM(ord.[UnitPrice] * [Quantity]) as Total

FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN
[Sales].[Products] pro ON ord.ProductID = pro.ProductID
JOIN
[Sales].[Categories] ca ON pro.CategoryID = ca.CategoryID
GROUP BY ca.CategoryID
GO


