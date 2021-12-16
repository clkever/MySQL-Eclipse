/**
Infox
@author Cleverson Martins
*/
create database dbinphox;
use dbinphox;

create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10) 
);

-- Pesquisar banco de dados disponíveis
show databases;
-- Verificar tabelas disponíveis no banco
show tables;
-- Comando usado para descrever a tabela
describe usuarios;

insert into usuarios (usuario, login, senha)

values ('Clever', 'admin' , '1234');

alter table usuarios modify senha varchar (250);
alter table usuarios modify login varchar (50);

-- Armazenando um campo com criptografia 
insert into usuarios (usuario, login, senha)
values ('Bruno', 'bruno@usuario' , md5('12345'));

select * from usuarios;

insert into usuarios (usuario, login, senha)
values ('Raquel', 'raq@gmail.com', md5('45260'));

insert into usuarios (usuario, login, senha)
values ('Lázaro', 'laz@hotmail.com', md5('45260'));

insert into usuarios (usuario, login, senha)
values ('Tatiana', 'tati@folha.com.br', md5('52660'));

insert into usuarios (usuario, login, senha)
values ('Ícaro', 'icaro@ig.com.br', md5('45854'));

insert into usuarios (usuario, login, senha)
values ('Carol', 'carol@bol.com.br', md5('48560'));


insert into usuarios(usuario,login,senha) values ('Cleverson Martins','clev.mts@gmail.com',md5('457720'));
update usuarios set usuario='Carol',login='carol@bol.com.br',senha=md5('85619') where id=7;

-- Tabela de clientes (clientes da assistência técnica)
create table clientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null
);

describe clientes;

insert into clientes (nome,fone) values ('José de Assis' , '95247-5244');
insert into clientes (nome,fone) values ('Bruna Martins' , '92466-3288');

select * from clientes;
select * from clientes where nome like 'j%' order by nome;







-- Tabela de OS ( Ordem de serviços)
create table tbOs(
os int primary key auto_increment,
equipamento varchar(250) not null,
defeito varchar(250) not null,
dataOs timestamp default current_timestamp,
statusOs varchar(50) not null,
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references clientes(idcli)
);

describe tbOs;

insert into tbOs(equipamento,defeito,statusOs,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',1);

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

select * from tbOs;

select * from usuarios where login='carol@bol.com.br' and senha=md5('48560');



