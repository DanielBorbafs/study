/*
Essa query traz os clientes que efetuaram o cadastro,
porém ainda não compraram em nossa plataforma, 
vamos pegar os dados para a equipe de marketing trabalhar com mala direta
*/
SELECT NOME_CLIENTE, EMAIL, UF
FROM CLIENTES 
WHERE QTD_COMPRAS = 0
GO
