-- Consulta para identificar os 10 produtos com maior volume de vendas no banco Contoso
USE ContosoRetailDW

SELECT TOP 10 
    p.ProductName AS Nome_Produto
	,SUM(F.SalesQuantity) AS Quantidade_Vendida
	,FORMAT(SUM(F.SalesAmount), 'C0') AS Receita_Total
FROM FactSales F

JOIN DimProduct P ON F.ProductKey = P.ProductKey

GROUP BY P.ProductName

ORDER BY Quantidade_Vendida DESC

-- fazendo um pequeno teste 14:20

