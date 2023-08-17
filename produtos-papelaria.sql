--Banco de dados: Produtos papelaria

--Criar a tabela Produtos;
CREATE TABLE Produtos
(Codprod   int,
 Descricao varchar(25),
 Preco     numeric(9,2),
 Qtde      int,
 Cor       char(20),
CONSTRAINT Pk_CodProd PRIMARY KEY (CodProd));

SELECT * FROM Produtos
--Inserir 10 registros;
INSERT INTO Produtos VALUES
(1, 'Caneta bic', 3.50, 149, 'Azul'),
(2, 'Caneta bic', 3.50, 174, 'Vermelho'),
(3, 'Caneta bic', 3.50, 199, 'Preta'),
(4, 'Caderno Inteligente', 89.49, 28, 'Rose Gold'),
(5, 'Caderno Inteligente', 89.49, 34, 'Preto'),
(6, 'Folha Caderno Inteligente', 15.68, 104, 'Branco'),
(7, 'Folha Caderno Inteligente', 18.68, 52, 'Colorido'),
(8, 'Estojo', 9.99, 98, 'Rosa e branco'),
(9, 'Estojo', 9.99, 97, 'Azul e branco'),
(10, 'R�gua', 2.78, 156, 'Transparente'),
(11, 'Apontador', 3.88, 34, 'Transparente'),
(12, 'Agenda 2023', 24.67, 29, 'Vermelho');

--Selecionar os produtos com preço entre 10 e 50 reais
SELECT * FROM Produtos WHERE Preco between 10 and 50;

--Listar todos os produtos que tem descrição iniciado em ‘A’
SELECT * FROM Produtos WHERE Descricao like 'A%';

--Quantos produtos temos no cadastro?
Select COUNT(*) as 'Qtde Produtos' from Produtos;

--Qual o valor do produto mais caro?
Select MAX(Preco) as 'Maior pre�o' from Produtos; 

--Qual o valor do produto mais barato?
Select MIN(Preco) as 'Menor pre�o' from Produtos; 

--Qual a média de preços?
Select AVG(Preco) as 'M�dia de pre�os' from Produtos; 

--Quantos produtos vermelhos temos no cadastro?
Select COUNT(*) as 'Qtde Produtos Vermelhos' from Produtos where Cor = 'Vermelho';

--Excluir todos os produtos com qtde abaixo de 5;
Delete from Produtos where Qtde<5;

--Selecionar todos os produtos de cor Azul, vermelho, branco e preto.
select*from Produtos where Cor in ('azul', 'vermelho','branco', 'preto');

--Qual o somatório das quantidades?
Select SUM(qtde) as 'Total qtde' from Produtos;

--Listar as cores sem duplicidade
Select distinct Cor from Produtos;

--Atualizar o preço dos produtos com preço abaixo de 10.00 acrescentando 15%;
Update Produtos set Preco = preco*1.15 where Preco<10;

--Atualizar o preço dos produtos com preço acima de 500.00 com um desconto de 5%
Update Produtos set Preco = preco*0.95 where Preco>100;
