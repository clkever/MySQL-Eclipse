/** 
CJ Extintor - Projeto Final Banco de Dados
@author CLEVERSON MARTINS 
13/09/2021 17:15 
*/

create database cjextintores;
use cjextintores;

drop database cjextintores;

create table usuarios(
	id int primary key auto_increment,
	usuario varchar(70) not null,
	login varchar(20) not null unique,
	senha varchar(250) 
);
describe usuarios;

insert into usuarios(usuario,login,senha) values ('Íris Ortega','irisorth@live.com',md5('215465'));
insert into usuarios(usuario,login,senha) values ('Hector de Azevedo','hector_aze@gmail.com',md5('562480'));
insert into usuarios(usuario,login,senha) values ('Flor de Liz','flor.liz@hotmail.com',md5('685441'));

insert into usuarios(usuario,login,senha) values ('Cleverson Martins','clev.mts@gmail.com',md5('657720'));

select * from usuarios;


create table clientes(
	idcli int primary key auto_increment,
    nome varchar(70) not null,
    cpf varchar(20) unique not null,
    fone varchar(20) not null,
    email varchar(50) unique,
    cep varchar(20) not null,
    endereco varchar(120) not null,
    numero varchar(50) not null,
    complemento varchar(120),
    cidade varchar(50) not null,
    bairro varchar(50) not null,
    estado varchar(70) not null
);
describe clientes;

insert into clientes (nome,cpf,fone,email,cep,endereco,numero,complemento,cidade,bairro,estado) 
values ('Henrique de Almeida','20225485265','97232-3200','henrique@hotmail.com','17010-001','Rua Primeiro de Maio','23','Casa de muro verde','Bauru','Estoril','São Paulo');

insert into clientes (nome,cpf,fone,email,cep,endereco,numero,complemento,cidade,bairro,estado) 
values ('Flávio de Campos','20589485105','92532-3210','flavio@gmail.com','06070-1200','Avenida São João','245','Paralelo a rua XXI','Sete Lagoas','Dumont','Minas Gerais');

insert into clientes (nome,cpf,fone,email,cep,endereco,numero,complemento,cidade,bairro,estado) 
values ('Bruna Ortega','28585625105','93372-3020','bruna@bol.com.br','02140-302','Estrada das Flores','1254','Sobrado Amarelo','Jacarezinho','Niterói','Rio de Janeiro');

insert into clientes (nome,cpf,fone,email,cep,endereco,numero,complemento,cidade,bairro,estado) 
values ('Carol Ribeiro','22385625225','91172-2220','carol@ig.com.br','63540-250','Rua 25','247','Frente ao Mercado','Manaus','Manacapuru','Amazonas');

insert into clientes (nome,cpf,fone,email,cep,endereco,numero,complemento,cidade,bairro,estado) 
values ('Bruna Fratesk','15385623525','95972-2215','thibo@gmail.com','65240-230','Pio XXIII','2450','Esquina com a Fiat','Nova Andradina','Ingá','Mato Grosso do Sul');

select * from clientes;
select * from clientes where nome like 'b%' order by nome;


create table tbos(
	os int primary key auto_increment,
    modelo varchar(20) not null,
    serie varchar(20) not null,
    detalhes varchar(50) not null,
    defeito varchar(100) not null,
    diagnostico varchar(100),
    observacoes varchar(100),
    dataos timestamp default current_timestamp,
    statusos varchar(50) not null,
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references clientes(idcli)
);
describe tbos;

insert into tbos(modelo,serie,detalhes,defeito,diagnostico,observacoes,statusos,idcli)
values('PQS','12345','No Carrinho','Conserto de Válvula','Substituição','Sob. Análise','Orçamento',1);

insert into tbos(modelo,serie,detalhes,defeito,diagnostico,observacoes,statusos,idcli)
values('PQ','23335','Solto','Não se Aplica','Calibragem','Aprovado','Orçamento',5);

select * from tbos;

select * from usuarios where login='irisorth@live.com' and senha=md5('215465');