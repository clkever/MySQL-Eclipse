/**
Agenda de contatos
@author Cleverson Martins
*/
-- Pesquisar banco de dados disponíveis
show databases;
-- Criando um banco de dados
create database dbagenda;

-- Remover um banco de dados
drop database dbagenda;

-- Selecionar o banco de dados
use dbagenda;

-- Criando uma tabela no banco de dados
create table contatos(
	id int primary key auto_increment,
    nome varchar(150) not null,
    fone varchar(20) not null,
    email varchar(70) unique
);

-- Verificar tabelas disponíveis no banco
show tables;
-- Comando usado para descrever a tabela
describe contatos;

-- Lista todos os contatos cadastrados (próxima aula)
select * from contatos;

select * from contatos order by nome;

delete from contatos where id=5;

-- Comando usado para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;
-- Comando usado para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);
-- Comando usado para adicionar um novo campo em um lugar específico
alter table contatos add column fone2 varchar(15) after fone;
-- Comando usado para modificar o tipo de dado e/ou validações do campo
alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar (100);
alter table contatos modify email varchar (100) unique;
-- Comando usado para apagar um campo da tabela
alter table contatos drop column obs;
alter table contatos drop column fone2;
-- Comando usado para remover uma tabela
drop table contatos;

/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.

CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)

*/

/* CRUD CREATE ( Insert) */

insert into contatos (nome,fone,email) 
values ('Bill Gates' , '99999-1111' , 'bill@email.com');

insert into contatos (nome,fone)
values ('Beatriz' , ' 99999-222');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333', 'linux@email.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');

insert into contatos (nome,fone,email)
values ('Bruna','99999-11111','bruna@email.com');

insert into contatos (nome,fone,email)
values ('Bianca','99999-22222','bianca@email.com');

insert into contatos (nome,fone,email)
values ('Bruno','99999-33333','bruno@email.com');

insert into contatos (nome,fone,email)
values ('Barbara','99999-44444','barbara@email.com');

insert into contatos (nome,fone,email)
values ('Tiago','99999-55555','tiago@email.com');

insert into contatos (nome,fone,email)
values ('Rodrigo','99999-66666','rodrigo@email.com');

insert into contatos (nome,fone,email)
values ('Flávio','99999-77777','flavio@email.com');

insert into contatos (nome,fone,email)
values ('Sebastião','99999-88888','sebastiao@email.com');

insert into contatos (nome,fone)
values ('Paulo','99999-99999');

insert into contatos (nome,fone)
values ('Raquel','99999-100000');

select * from contatos where id=1;
select * from contatos order by nome asc;

/* CRUD READ (Select) */
-- Selecionar todos os registros da tabela
select * from contatos;
-- Selecionar todos os registros em ordem alfabética (ascendente descendente)
select * from contatos order by nome asc;
-- Ordem alfabética ao descentente
select * from contatos order by nome desc;
-- Selecionar um registro (contato) específico
select * from contatos where nome= 'Ana Maria';
select * from contatos where id=1;
-- Selecionar campos específicos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;
-- Filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';

/* CRUD UPDATE (ALTERA) */

-- Alterando um dado espeífico do registro da tabela (usar sempre o id)
update contatos set fone='912348090' where id=4;
update contatos set email='bia@email.com' where id=2;
-- Alterando todos os dados do registro

update contatos set nome='Beatriz' , fone='35685-2655' , email='beatriz@hotmail.com' where id=2;

/* CRUD DELETE (APAGA) */
-- excluindo um registro da tabela ( usa-se sempre o id "segurança")

delete from contatos where id=9


















   






