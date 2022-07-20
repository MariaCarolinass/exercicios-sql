create database cadastro
default character set utf8
default collate utf8_general_ci;

create table `pessoas` (
`id` int not null auto_increment,
`nome` varchar(30) not null,
`nascimento` date,
`sexo` enum('M', 'F'),
`peso` decimal(5,2),
`altura` decimal(3,2),
`nacionalidade` varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
tootaulas int unsigned,
ano year default '2019'
) default charset = utf8;

describe cursos;

alter table cursos
add column idcursos int first;

alter table cursos
add primary key (idcursos);

create table if not exists teste (
id int,
nome varchar(10),
idade int
);

select * from teste;

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '72');

drop table if exists teste;