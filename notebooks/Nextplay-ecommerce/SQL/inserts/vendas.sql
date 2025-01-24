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
(11, 103, 202, 'Ação', 1, 70.00, 70.00, '2025-01-09', 'Boleto', 'E-commerce')
GO