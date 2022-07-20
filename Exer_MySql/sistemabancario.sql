create database sistbancario;

create table banco (
codigo int not null primary key,
nome varchar(70) not null,
endereco varchar(90)
);

create table agencia_bancaria (
endereco varchar(90),
numAgencia int not null primary key
);

create table conta (
numConta int not null primary key,
saldo int,
tipo varchar(80)
); 

create table emprestimo (
numEmpr int not null primary key,
valor int,
tipo varchar(80)
);

create table cliente (
ssn int not null primary key,
telefone int not null,
nome varchar(80) not null,
endereco varchar(80)
);

alter table banco add foreign key (codigo) references agencia_bancaria(numAgencia);
alter table agencia_bancaria add foreign key (numAgencia) references emprestimo(numEmpr);
alter table agencia_bancaria add foreign key (numAgencia) references conta(numConta);
alter table conta add foreign key (numConta) references cliente(ssn);
alter table emprestimo add foreign key (numEmpr) references cliente(ssn);


