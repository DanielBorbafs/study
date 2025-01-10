/* 
A Trigger abaixo verifica se o insert da venda está sendo realizado dentro de um período de campanha,
caso esteja, a venda irá para uma tabela de log e será armazenada separada das vendas realizadas fora de períodos
de campanha.
*/

CREATE OR ALTER TRIGGER TRG_INSERIR_LOG_VENDAS
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
        -- Se estiver em período de campanha
        PRINT 'Pedido em período de campanha, será separado em uma tabela diferente.';

        -- Insere o registro na tabela de LOG com preço descontado
        INSERT INTO LOG_VENDAS_ONLINE (ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO, ORIGEM_VENDA)
        SELECT 
            i.ID_VENDA, 
            i.ID_PRODUTO, 
            i.ID_CLIENTE, 
            i.CATEGORIA, 
            i.QTD_VENDIDA, 
            i.PRECO_UNITARIO * (1 - c.DESCONTO / 100.0) AS PRECO_UNITARIO_DESCONTADO, 
            i.QTD_VENDIDA * i.PRECO_UNITARIO * (1 - c.DESCONTO / 100.0) AS VALOR_TOTAL_DESCONTADO,
            i.DATA_VENDA, 
            i.FORMA_PAGAMENTO, 
            i.ORIGEM_VENDA
        FROM INSERTED i
        JOIN CAMPANHAS c
        ON i.CATEGORIA = c.CATEGORIAS
           AND i.DATA_VENDA BETWEEN c.DATA_INICIO AND c.DATA_FIM;

        -- Remove o registro da tabela VENDAS_ONLINE
        DELETE FROM VENDAS_ONLINE
        WHERE ID_VENDA IN (SELECT ID_VENDA FROM INSERTED);
    END
    ELSE
    BEGIN
        -- Se não estiver em período de campanha
        PRINT 'Produto não está em período de campanha, não será separado para a tabela de log.';
    END
END;
GO


/* 
A trigger abaixo atualiza o estoque após uma venda ser realizada,
temos duas triggers uma para tabela de vendas online e outra para vendas fisica.
*/

CREATE TRIGGER TRG_ATUALIZA_ESTOQUE_VENDA_ONLINE
ON VENDAS_ONLINE
AFTER INSERT
AS 
BEGIN
     -- Atualizar o estoque baseado nos produtos vendidos
    UPDATE EP
    SET EP.QTD_ESTOQUE = EP.QTD_ESTOQUE - V.QTD_VENDIDA
    FROM ESTOQUE_PRODUTOS EP
    INNER JOIN INSERTED V ON EP.ID_PRODUTO = V.ID_PRODUTO;

    -- Opcional: Validar se o estoque ficou negativo
    IF EXISTS (SELECT 1 FROM ESTOQUE_PRODUTOS WHERE QTD_ESTOQUE < 0)
    BEGIN
        RAISERROR ('O estoque ficou negativo para algum produto. Verifique!', 16, 1);
        ROLLBACK TRANSACTION;
    END

    -- Mensagem de sucesso
    PRINT 'A atualização do estoque foi realizada com sucesso para a venda online!'
END
GO

CREATE TRIGGER TRG_ATUALIZA_ESTOQUE_VENDA_FISICA
ON VENDAS_FISICA
AFTER INSERT
AS 
BEGIN
     -- Atualizar o estoque baseado nos produtos vendidos
    UPDATE EP
    SET EP.QTD_ESTOQUE = EP.QTD_ESTOQUE - V.QTD_VENDIDA
    FROM ESTOQUE_PRODUTOS EP
    INNER JOIN INSERTED V ON EP.ID_PRODUTO = V.ID_PRODUTO;

    -- Opcional: Validar se o estoque ficou negativo
    IF EXISTS (SELECT 1 FROM ESTOQUE_PRODUTOS WHERE QTD_ESTOQUE < 0)
    BEGIN
        RAISERROR ('O estoque ficou negativo para algum produto. Verifique!', 16, 1);
        ROLLBACK TRANSACTION;
    END

    -- Mensagem de sucesso
    PRINT 'A atualização do estoque foi realizada com sucesso para a venda online!'
END
GO
