/**
Carrinho de compras
@author Cleverson Martins
*/
create database dbcarrinho;
create table carrinho(
id int primary key auto_increment,
produto varchar (40) not null,
quantidade int not null,
valor varchar (40) not null
);

-- Selecionar o banco de dados
use dbcarrinho;

-- Pesquisar banco de dados disponíveis
show databases;
-- Comando usado para descrever a tabela
describe carrinho;
-- Verificar tabelas disponíveis no banco
show tables;

alter table carrinho modify produto varchar(100) not null;

-- A linha abaixo modifica o tipo de dados de um campo
-- decimal (10,2) 10 digitos com duas casas decimais
alter table carrinho modify valor decimal(10,2) not null;

insert into carrinho(produto,valor,quantidade)
values ('Lápis',1,10);

insert into carrinho(produto,valor,quantidade)
values ('Caneta',1.25,50);

insert into carrinho(produto,valor,quantidade)
values ('Régua',3.50,20);

insert into carrinho(produto,valor,quantidade)
values ('Leite',4.50,12);

insert into carrinho(produto,valor,quantidade)
values ('Chocolate',3.50,2);

insert into carrinho(produto,valor,quantidade)
values ('Shampoo',12.50,2);

insert into carrinho(produto,valor,quantidade)
values ('Sabão',3.50,10);

insert into carrinho(produto,valor,quantidade)
values ('Óleo',9.50,4);

insert into carrinho(produto,valor,quantidade)
values ('Detergente',3.50,10);

insert into carrinho(produto,valor,quantidade)
values ('Sabonete',3.50,15);

insert into carrinho(produto,valor,quantidade)
values ('Desinfetante',9.50,2);

insert into carrinho(produto,valor,quantidade)
values ('Batata',3.50,20);

insert into carrinho(produto,valor,quantidade)
values ('Água',1.50,10);

select * from contatos order by nome asc;
select sum(valor*quantidade) as total from carrinho;

select * from carrinho;

-- Operações matemáticas 
select sum(valor*quantidade) as total from carrinho;

update carrinho set quantidade='50' where id=6;
update carrinho set quantidade='25' where id=3;
delete from carrinho where id=1



