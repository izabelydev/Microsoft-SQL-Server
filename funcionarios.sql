--Banco de dados: Funcionários

--Criar tabela
Create table Empregados

(MATR      CHAR(6),
 NOME      VARCHAR(12),
 SOBRENOME VARCHAR(15),
 DEPT      CHAR(10),
 FONE      VARCHAR(14),
 DATA_ADM  DATETIME,
 CARGO     CHAR(12),
 SEXO      CHAR(1),
 IDADE     INT,
 SALARIO   NUMERIC(10,2),
 COMISSAO  NUMERIC(10,2),

 Constraint pk_matr primary key (MATR));

 select*from Empregados;


 --Inserir dados na tabela
 insert into Empregados values
 (101, 'Izabely', 'Louren�o', 'T.I.', 11995269973, '20220804', 'Assistente', 'F', 19, 1800, 0),
 (102, 'Veronica', 'Silva', 'PCP', 11990175106, '20220612', 'Assistente', 'F', 18, 1700, 60),
 (103, 'Lucas', 'Santos', 'Vendas', 11952665462, '20210319', 'Analista', 'M', 23, 2245,467),
 (104, 'Fernanda', 'Costa', 'Marketing', 11923453574, '20161130', 'Promotora', 'F', 29, 3654, 423),
 (105, 'Rafael', 'Ribeiro', 'T.I.', 11945723585, '20230124', 'Programador', 'M', 32, 4782,140),
 (106, 'Bruno', 'Gomes', 'Vendas', 11923654424, '20210726', 'Vendedor', 'M', 25, 1800, 180),
 (107, 'Bruna', 'Rodrigues', 'Marketing', 11936542533, '20201003', 'PPC', 'F', 29, 2450, 120),
 (108, 'Jo�o', 'Gomes', 'PCP', 11932654789, '20171203', 'Analista PCP', 'M', 21, 1700, 60),
 (109, 'Larissa', 'Almeida', 'RH', 11932647425, '20180517', 'Gerente', 'F', 29, 2630, 45),
 (110, 'Aurora', 'Pires', 'ADM', 11974368254, '20161130', 'CEO', 'F', 35, 8532, 2300);


 --Selecionar o sobrenome, primeiro nome, departamento, data de admissão e salário de todos os empregados que ganham mais que R$ 5000.
 select nome, sobrenome, dept, data_adm, salario from Empregados where salario > 5000;

 --Qual a média de salários dos funcionários?
 select AVG (salario) as 'M�dia sal�rio' from Empregados;

 --Quantos funcionários pertencem ao departamento de TI?
 select COUNT (dept) as 'Dpt. T.I.' from Empregados where dept = 'T.I.';

 --Quantos funcionários temos com cargo igual a PROGRAMADOR?
 select COUNT (cargo) as 'Programador' from Empregados where cargo = 'Programador';

 --Qual o somatório dos salários?
 select SUM (salario) as 'Total sal�rio' from Empregados;

 --Qual o valor do maior salário?
 select MAX(salario) as 'Maior sal�rio' from Empregados;

 --Qual o valor do menor salário?
 select MIN(salario) as 'Menor sal�rio' from Empregados;

 --Atribuir um aumento de 5% aos funcionários do departamento de TI.
 update empregados set salario = salario*1.05 where dept = 'T.I.';

 --Selecionar os cargos (sem duplicidade).
 select distinct cargo from Empregados;

 --Selecionar os funcionários com idade entre 30 e 40 anos (inclusive).
 select*from Empregados where idade between 30 and 40;

 --Qual a média de idades?
 select AVG (idade) as 'M�dia idades' from Empregados;

 --Selecionar todos os funcionários com idade entre 20 e 30 anos (inclusive) do departamento de TI.
 select*from Empregados where idade between 20 and 30 and dept = 'T.I.';

 --Selecionar todos os funcionários cujo nome inicia-se pela letra ‘J’.
 select*from Empregados where nome like 'J%'

 --Selecionar todos os funcionários dos departamentos de TI, Vendas e Marketing.
 select*from Empregados where dept in ('T.I.', 'Vendas', 'Marketing');
