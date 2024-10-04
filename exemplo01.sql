create database mercado;

use mercado;

create table vendas(
id_venda int  auto_increment primary key,
produto varchar (100) not null,
quantidade int not null,
preco decimal (10,2)
);

insert into vendas (produto,quantidade,preco)
values ("maça", 5, 5.00),
       ("pera", 20, 5.00),
       ("banana", 20 , 3.00),
       ("melancia", 10, 30.00),
       ("melao", 3, 10.00),
       ("morango", 20,8.00),
       ("kiwi", 15, 9.00),
       ("uva",20, 10.00),
       ("mamao",8, 7.00),
       ("Amora",10,2.00);
       
select * from vendas;    

select  count(*) AS Total_Vendas from vendas;
select sum(quantidade) AS Total_Produtos from vendas;
select avg (preco) AS Media_de_reco from vendas;
select min(preco) Menor_preco from vendas;
select max(preco) Maior_preco from vendas;

select produto, count(*) AS total_Vendas from vendas
group by produto;

select produto,sum(quantidade) AS total_Produtos from vendas
group by produto
having total_Produtos >17;

select produto , quantidade, preco from vendas
order by preco asc;

select produto , quantidade, preco from vendas
order by preco desc
limit 5;

select produto, preco,
	(select max(preco) from vendas) AS Maior_preco
from vendas;

select produto, preco,
	(select min(preco) from vendas) AS Menor_preco
from vendas;

   