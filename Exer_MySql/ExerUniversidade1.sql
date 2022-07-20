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