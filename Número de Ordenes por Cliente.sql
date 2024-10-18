USE [DbVenta]
GO

/****** Object:  View [dbo].[N�mero de �rdenes por Cliente]    Script Date: 10/17/2024 8:43:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[N�mero de �rdenes por Cliente] AS
SELECT
	CustomerID as Clientes,
	SUM([Quantity]) as Ordenes
FROM [DbVenta].[Sales].[OrderDetails] ord
JOIN [Sales].[Orders] o ON ord.OrderID = o.OrderID
GROUP BY o.CustomerID
GO


