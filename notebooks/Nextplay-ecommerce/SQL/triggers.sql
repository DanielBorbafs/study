/* 
A Trigger abaixo verifica se o insert da venda está sendo realizado dentro de um período de campanha,
caso esteja, a venda irá para uma tabela de log e será armazenada separada das vendas realizadas fora de períodos
de campanha.
*/

CREATE TRIGGER TRG_INSERIR_LOG_VENDAS
ON VENDAS_ONLINE
AFTER INSERT
AS
BEGIN
    -- Verifica se a venda ocorreu durante uma campanha
    IF EXISTS (
        SELECT 1
        FROM INSERTED i
        JOIN CAMPANHAS c
        ON i.CATEGORIA = c.CATEGORIAS
           AND i.DATA_VENDA BETWEEN c.DATA_INICIO AND c.DATA_FIM
    )
    BEGIN
        -- Insere o registro na tabela de LOG
        INSERT INTO LOG_VENDAS_ONLINE (ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO, ORIGEM_VENDA)
        SELECT ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO, ORIGEM_VENDA
        FROM INSERTED;

        -- Remove o registro da tabela VENDAS_ONLINE
        DELETE FROM VENDAS_ONLINE
        WHERE ID_VENDA IN (SELECT ID_VENDA FROM INSERTED);
    END
END;
GO

