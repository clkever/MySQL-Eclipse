create database dblojinha;
use dblojinha;

	create table carrinho(
id int primary key auto_increment,
produto varchar(200) not null,
quantidade varchar(20) not null,
valor varchar(20) not null
);

describe carrinho;
insert into carrinho(produto,quantidade,valor)
values('Caneta BIC azul','50','1.35');

select * from carrinho;

select * from carrinho order by produto;

delete from carrinho where id=5;


