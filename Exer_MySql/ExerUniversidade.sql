create database universidade;

create table departamento (
id int not null auto_increment primary key,
nome varchar (300) not null,
codigo int (20) not null unique,
telefone int (12),
centro varchar (300)
);

desc aluno;

create table aluno (
id int not null auto_increment primary key,
nome varchar (300) not null,
nummatricula int (40) unique not null,
cpf int (11) unique not null,
endereco varchar (300),
telefone int (12),
datanascimento date,
sexo enum ('M','F'),
departamento varchar (300),
curso varchar (300)
);

create table endereco (
id int not null auto_increment primary key,
rua varchar (300),
cidade varchar (300),
cep int (40) not null unique
);

create table curso (
id int not null auto_increment primary key,
nome varchar (300) not null,
tipo varchar (300),
departamento varchar (300),
coordenador varchar (300)
);

create table tipo (
id int not null auto_increment primary key,
tecnico varchar (300),
graduacao varchar (300),
mestrado varchar (300),
doutorado varchar (300)
);

create table professor (
id int not null auto_increment primary key,
nome varchar (300) not null,
cpf int (12) unique not null,
departamento varchar (300),
telefone int (12)
);

create table discilina (
id int not null auto_increment primary key,
nome varchar (300) not null,
descricao varchar (300),
codigo int (40) unique,
numerocartao int (100),
departamento varchar (300)
);

create table oferta (
id int not null auto_increment primary key,
professor varchar (300) not null,
horario time
);

select  * from departamento;

insert into departamento values 
(null,'Ciências Exatas','20','22321334','Ciências'),
(null,'Ciências Exatas','21','22324432','Ciências'),
(null,'Ciências Exatas','22','32347455','Ciências');

insert into curso values
(null,'Informática','Técnico','Ciências Exatas','Honda'),
(null,'Informática','Licenciatura','Ciências Exatas','Leila'),
(null,'Equipamentos','Superior','Ciências Exatas','José'),
(null,'Jogos','Técnico','Ciências Exatas','Fransico');

insert into professor values
(null,'Maira','12748596','Ciências Exatas','94859384'),
(null,'Baesse','84950369','Ciências Exatas','92836473');

select * from aluno;

insert into aluno values 
(null,'Carol','20171174','123457','Rua Vereador','99284673','2002-09-11','F','Ciências Exatas','Informática'),
(null,'Claudio','20488571','1456935','Rua Afonso','99286489','2001-10-10','M','Ciências Exatas','Equipamentos'),
(null,'Luiza','204577891','54923678','Rua Bernado','99578946','2009-11-02','F','Ciências Exatas','Equipamentos'),
(null,'Debora','204278951','5468979','Rua Imperatriz','99467789','2007-11-09','F','Ciências Exatas','Equipamentos'),
(null,'Artur','205896395','62437954','Rua Asis','99546758','2002-02-18','M','Ciências Exatas','Equipamentos'),
(null,'Catarina','2065784','56378286','Rua Imperador','994678357','2004-08-02','F','Ciências Exatas','Jogos'),
(null,'Pedro','2076877654','45678765','Rua Renascer','99445676','2001-10-11','M','Ciências Exatas','Jogos'),
(null,'Iza','2046788765','45677431','Rua Pedro de Souza','9567867','2002-04-15','F','Ciências Exatas','Jogos'),
(null,'Letícia','23564785','4565787','Rua Sá','99467899','2000-10-01','F','Ciências Exatas','Jogos');

insert into discilina values 
(null,'Fundamentos de Programação','Intro a Algoritmos','120','94767548','Ciências Exaras'),
(null,'Programação com acesso a banco de dados','BD Intro','121','6758445','Ciências Exaras'),
(null,'Engenharia de Software','Projetos de Software','122','5567684','Ciências Exaras');

select * from professor
where departamento = 'Ciências Exatas';

select * from curso
where nome = 'Informática' and tipo = 'Licenciatura';

select * from aluno
where nummatricula = '20171174';

select nome, descricao from discilina
where nome = 'Programação com acesso a banco de dados' or nome = 'Engenharia de Software';

select * from aluno
where departamento = 'Ciências Exatas';

select * from aluno
where nome like '%J';

select * from discilina
where numerocartao >= 3;