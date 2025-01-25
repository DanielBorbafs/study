-- VENDA REALIZADA DENTRO DO PERÍODO DE CAMPANHA
INSERT INTO VENDAS_ONLINE (ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO, ORIGEM_VENDA)
VALUES 
(1, 101, 201, 'FPS', 1, 60.00, 60.00, '2025-01-15', 'Cartão de Crédito', 'E-commerce'),
(2, 101, 201, 'FPS', 4, 60.00, 60.00, '2025-01-15', 'Cartão de Crédito', 'E-commerce'),
(3, 101, 203, 'FPS', 4, 60.00, 60.00, '2025-01-01', 'Cartão de Crédito', 'E-commerce'),
(4, 101, 204, 'FPS', 1, 60.00, 60.00, '2025-01-04', 'Cartão de Débito', 'E-commerce'),
(5, 101, 210, 'FPS', 1, 60.00, 60.00, '2025-01-05', 'Cartão de Débito', 'E-commerce'),
(6, 101, 205, 'FPS', 1, 60.00, 60.00, '2025-01-07', 'Cartão de Débito', 'E-commerce'),
(7, 101, 208, 'FPS', 1, 60.00, 60.00, '2025-01-09', 'PIX', 'E-commerce'),
(8, 101, 209, 'FPS', 1, 60.00, 60.00, '2025-01-09', 'PIX', 'E-commerce'),
(9, 101, 207, 'FPS', 2, 60.00, 60.00, '2025-01-09', 'Boleto', 'E-commerce'),
(10, 101, 206, 'FPS', 1, 60.00, 60.00, '2025-01-09', 'Boleto', 'E-commerce'),
(12, 104, 202, 'RPG', 1, 55.00, 55.00, '2025-01-10', 'PIX', 'E-commerce')
GO



-- VENDAS REALIZADAS FORA DE PERÍODOS DE CAMPANHAS
INSERT INTO VENDAS_ONLINE (ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO, ORIGEM_VENDA)
VALUES 
(11, 103, 202, 'Ação', 1, 70.00, 70.00, '2025-01-09', 'Boleto', 'E-commerce'),
(13, 143, 232, 'Ação', 1, 250.00, 250.00, '2025-01-09', 'Boleto', 'E-commerce'),
(14, 144, 245, 'Esportes', 1, 400.00, 400.00, '2025-01-10', 'Pix', 'E-commerce'),
(15, 148, 222, 'Ação', 1, 300.00, 300.00, '2025-01-10', 'Pix', 'E-commerce'),
(16, 136, 217, 'Ação', 1, 250.00, 250.00, '2025-01-10', 'Pix', 'E-commerce'),
(17, 130, 222, 'Acessórios', 1, 500.00, 500.00, '2025-01-10', 'Pix', 'E-commerce'),
(18, 123, 211, 'Acessórios', 1, 1800.00, 1800.00, '2025-01-11', 'Pix', 'E-commerce')
GO




-- VENDAS FISICA
INSERT INTO VENDAS_FISICA(ID_VENDA, ID_PRODUTO, ID_CLIENTE, CATEGORIA, QTD_VENDIDA, PRECO_UNITARIO, VALOR_TOTAL, DATA_VENDA, FORMA_PAGAMENTO)
VALUES 
 (1, 112, 234, 'ACESSSÓRIOS', 1, 1400.00, 1400.00, '2025-01-09', 'Cartão de Crédito'),
 (2, 112, 212, 'ACESSÓRIOS', 1, 1400.00, 1400.00, '2025-01-09', 'Cartão de Crédito'),
 (3, 122, 210, 'CONSOLE', 1, 2500, 2500, '2025-01-10','Pix'),
 (4, 114, 212, 'RPG', 1, 70.00, 70.00, '2025-01-10', 'Dinheiro'),
 (5, 124, 218, 'Simulacao', 1, 150.00, 150.00, '2025-01-10', 'Cartão de débito')
GO