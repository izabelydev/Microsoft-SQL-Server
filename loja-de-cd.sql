--Banco de dados: Loja CDs

--Criar tabelas
create table CDS 
(Codigo       int,
 Nome         varchar (40),
 Data_Compra  datetime,
 Valor_Pago   numeric(10,2),
 Local_Compra varchar(20),
 Album        int,
 constraint pk_Codigo primary key (Codigo));

select*from CDS; 

--Inserir 5 registros. 
 insert into CDS values
 (11, 'Beat it - Michael Jackson', '20191023', 27.36, 'Submarino', 1),
 (12, 'Billie Jean - Michael Jackson', '20191023', 26.33, 'Americanas', 1),
 (13, 'Thriller - Michael Jackson', '20090303', 29.39, 'Submarino', 1),
 (14, 'Smooth Criminal - Michael Jackson', '20090303', 31.44, 'Americanas', 0),
 (15, 'Dangerous - Michael Jackson', '20090303', 28.38, 'Submarino',0);

 --Mostrar todos os CDs. 
 select nome from CDS;

 --Mostrar os campos nome e data_compra. 
 select nome, Data_Compra from CDS;

 --Mostrar o total gasto com a compra dos Cds 
 select SUM (Valor_pago) as 'Total gasto:' from CDS;

 --Mostre a quantidade de Cds. 
 select COUNT(*) as 'Qntd CDS:' from CDS;

 --Mostre o nome de todos cds comprados no Submarino. 
  select nome from CDS where Local_Compra = 'Submarino';

  --Mostrar todos os cds que são álbuns. 
  select nome from CDS where Album = 1;

  --Mostre o cd que custou mais caro. 
  select MAX(Valor_Pago) as 'Maior valor' from CDS;

  --Mostrar todos os CDs que tem nome iniciado pela letra “B”. 
  select*from CDS where nome like 'B%';

  --Mostrar a média de preços dos CDs. 
  select AVG (Valor_Pago) as 'M�dia do valor' from CDS;

  --Quantos CDs foram comprados na Americanas?
  select COUNT(*) as 'Americanas:' from CDS where Local_Compra = 'Americanas';

  --Atualizar o preço dos CDs reajustando em 10%. 
  update CDS set Valor_Pago = Valor_Pago * 1.10;

  --Mostrar todos os CDs comprados no Submarino, Americanas e Saraiva. 
  select * from CDS where Local_Compra in ('Submarino', 'Americanas', 'Saraiva');

  --Mostrar todos os CDs com código entre 20 e 30 inclusive. 
  select * from CDS where Codigo between 12 and 14;

  --Mostrar todos os CDs cujo valor pago seja maior que 25,00
  select * from CDS where Valor_Pago > 30;

  --Mostrar o preço do CD mais barato. 
  select MIN(Valor_Pago) as 'Menor pre�o' from CDS;

  --Mostrar todos os locais de compra, sem duplicidade. 
  select distinct Local_Compra from CDS;

  --Selecionar todos com o Valor_pago acima da média
  select * from CDS where Valor_Pago > ( select AVG(Valor_Pago) from CDS) ;

  --Selecionar todos com a data da compra igual a data mais recente
  select * from CDS where Data_compra = ( select max (Data_Compra) from CDS);

  --Quantos CDs estao com o Valor_pago abaixo da media?
  select COUNT (*) as 'CDS < m�dia' from CDS where Valor_Pago < ( select AVG(Valor_Pago) from CDS) ;

  --Selecionar todos com a data da compra igual a data mais antiga
   select * from CDS where Data_compra = ( select min (Data_Compra) from CDS);

 
