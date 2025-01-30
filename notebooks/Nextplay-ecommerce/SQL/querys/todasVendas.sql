/*
A query abaixo traz todas as vendas realizadas
*/

SELECT 
    v.ID_VENDA, 
    v.ID_PRODUTO, 
    v.ID_CLIENTE, 
    v.CATEGORIA, 
    v.QTD_VENDIDA, 
    v.PRECO_UNITARIO, 
    v.VALOR_TOTAL, 
    v.DATA_VENDA, 
    v.FORMA_PAGAMENTO, 
    v.ORIGEM_VENDA, 
    'ONLINE' AS TIPO_VENDA
FROM VENDAS_ONLINE v

UNION ALL

SELECT 
    l.ID_VENDA, 
    l.ID_PRODUTO, 
    l.ID_CLIENTE, 
    l.CATEGORIA, 
    l.QTD_VENDIDA, 
    l.PRECO_UNITARIO, 
    l.VALOR_TOTAL, 
    l.DATA_VENDA, 
    l.FORMA_PAGAMENTO, 
    l.ORIGEM_VENDA, 
    'LOG' AS TIPO_VENDA
FROM LOG_VENDAS_ONLINE l

UNION ALL

SELECT 
    f.ID_VENDA, 
    f.ID_PRODUTO, 
    NULL AS ID_CLIENTE,  -- Porque não há campo de cliente na tabela VENDAS_FISICA
    f.CATEGORIA, 
    f.QTD_VENDIDA, 
    f.PRECO_UNITARIO, 
    f.VALOR_TOTAL, 
    f.DATA_VENDA, 
    f.FORMA_PAGAMENTO, 
    NULL AS ORIGEM_VENDA,  -- Não há campo de origem na tabela VENDAS_FISICA
    'FISICA' AS TIPO_VENDA
FROM VENDAS_FISICA f
ORDER BY DATA_VENDA;
GO