create database Empresa202;

use Empresa202;

create table funcionarios(
cod_func int auto_increment primary key,
nome varchar (100),
sexo varchar (50),
bairro varchar (100),
salario decimal,
setor varchar (100)
);

insert into funcionarios (nome, sexo, bairro, salario, setor)
values ("Larissa menezes", "feminino", "Jabaguara",1200.00, "Marketing"),
	   ("Selma nunes", "feminino", "Grajau",3800.00, "Vendas"),
       ("Leando Henrique", "masculino", "Socorro",2900.00, "RH"),
       ("Amélia Jeremias", "feminino", "Socorro",4200.00, "Marketing"),
       ("Cláudio Jorge Silva", "Masculino", "Jabaguara",1480.00, "Vendas"),
       ("Luciano Souza", "feminino", "pedreira",1500.00, "Vendas"),
	   ("gabriela Santos Nunes ", "feminino", "Jurubatuba",4150.00, "Vendas"),
	   ("Rafaela vieira Jr", "feminino", "Jabaquara",700.00, "Marketing"),
	   ("Suzana Crispim", "feminino", "Jabaquara",5600.00, "producao"),
	   ("Sabrina oliveira castro", "feminino", "Pedreira",2900.00, "Marketing"),
	   ("Jarbas Silva nunes ", "Masculino", "Jurubatuba",5300.00, "producao"),
	   ("Ralf borges Silva ", "Masculino", "Jabaquara",1600.00, "producao");
       
       
       select * from funcionarios; 
       
       select sum(salario) AS Total_Salario_Funcionarios from funcionarios;
       
       select count(*) as quantidade_marketing from funcionarios where setor = 'Marketing';
       
       select setor, avg(salario) AS media_salario
       from funcionarios
       group by setor
       order by media_salario desc;
       
        select count(*) AS quant_fun_socorro
       from funcionarios
         where salario < 3000 
       and bairro = "Socorro";
       
       select setor,sum(nome) AS total_funcionarios from funcionarios
group by setor
having total_funcionarios >3;

select setor AS setor, count(*) AS Quantidade_Funcionarios
from funcionarios
group by setor
having count(*) > 1;
       
   

             
             
         
       