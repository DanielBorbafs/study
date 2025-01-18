
/*
Essas query é focada para trazer as quantidades de produtos armazenados em estoque,
e produtos que foram vendidos
a finalidade dessa query é agrupar esses produtos por ID e no final trazer a soma total,
com isso iremos calcular o custo total investido em cada produto para relatórios futuros.
*/
SELECT 
    e.id_produto,
    e.nome_produto,
    e.QTD_ESTOQUE,
    COALESCE(SUM(v.QTD_VENDIDA), 0) AS total_vendido,
    e.QTD_ESTOQUE + COALESCE(SUM(v.QTD_VENDIDA), 0) AS total_unidades
FROM 
    ESTOQUE_PRODUTOS e
LEFT JOIN 
    LOG_VENDAS_ONLINE V ON e.id_produto = v.id_produto
GROUP BY 
    e.id_produto, e.nome_produto, e.QTD_ESTOQUE
GO


-- para facilitar criei a view referente a query a cima

CREATE VIEW CUSTO_PRODUTO AS
	SELECT 
		e.id_produto,
		e.nome_produto,
		e.QTD_ESTOQUE,
		COALESCE(SUM(v.QTD_VENDIDA), 0) AS total_vendido,
		e.QTD_ESTOQUE + COALESCE(SUM(v.QTD_VENDIDA), 0) AS total_unidades
	FROM 
		ESTOQUE_PRODUTOS e
	LEFT JOIN 
		LOG_VENDAS_ONLINE V ON e.id_produto = v.id_produto
	GROUP BY 
		e.id_produto, e.nome_produto, e.QTD_ESTOQUE	
GO

SELECT * FROM CUSTO_PRODUTO
