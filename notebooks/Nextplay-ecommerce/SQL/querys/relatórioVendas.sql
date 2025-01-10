
/*
essa query retorna os dados do cliente, e informações sobre o produto comprado
*/
SELECT c.nome_cliente, c.email, c.uf, v.id_produto,p.nome_produto, v.valor_total, v.preco_unitario
FROM
CLIENTES c
INNER JOIN
VENDAS_ONLINE v
ON c.ID_CLIENTE = V.ID_CLIENTE
INNER JOIN
ESTOQUE_PRODUTOS p
ON v.ID_PRODUTO = p.id_produto
GO

