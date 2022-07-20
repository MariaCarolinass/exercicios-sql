create database bd;

 create table empregado (
	enome varchar(30) not null unique,
	cpf int not null primary key,
	salario float unsigned,
    cpf_Supervisor int not null,
    dnumero int
 ) engine = innodb;
 
alter table empregado add foreign key (cpf_Supervisor) references empregado(cpf);
alter table empregado add foreign key (dnumero) references departamento(dnumero);

create table departamento (
	dnome varchar(30) not null,
    dnumero int primary key,
    cpf_Gerente int not null
 ) engine = innodb;

alter table departamento add foreign key (cpf_Gerente) references empregado(cpf);

 create table trabalha (
	cpf_Emp int primary key,
    pnumero int primary key
 ) engine = innodb;
 
alter table trabalha add foreign key (cpf_Emp) references empregado(cpf);
alter table trabalha add foreign key (pnumero) references projeto(pnumero);
 
 create table projeto (
	pnome varchar(30),
    pnumero int primary key,
    dnumero int
 ) engine = innodb;

alter table projeto add foreign key (dnumero) references departamento(dnumero);

insert into empregado values 
('Andre','12312390172','1000','11111111111','001'),
('Ticiana','45645612356','2200','11111111111','001'),
('Lívia','88827399405', '900','11111111111','001'),
('Joaquina','38576839459','3220','11111111111','013'),
('Antonieto','18375839503','3000','11111111111','012'),
('Carlos','16274859283','1300','11111111111','003'),
('Alice','16227495069','1940','11111111111','003'),
('Lucas','67384950603','5000','11111111111','004'),
('João','27384956949','3400','11111111111','004');
select * from empregado;

insert into projeto values
('CID','01','001'),
('KDE','02','012'),
('SUDO','03','013'),
('MQRO','04','004'),
('ACLT','05','005'),
('SDD','06','006'),
('ACF','07','007');

select * from projeto;

insert into trabalha values
('78797654356','001'),
('97654324567','001'),
('95869938590','013'),
('16273849293','012');

select * from trabalha;

insert into departamento values
('Computação', '001','22222222222'),
('Estatística','002','33333333333'),
('Ciências','003','44444444444'),
('Matemática','004','55555555555'),
('Física','006','66666666666'),
('Logistica','007','77777777777'),
('Saúde','007','88888888888');

select * from departamento;

update empregado
set salario = salario * 0.2
where salario < 99999;

delete from empregado
where enome = 'Antonieto';

update projeto
set pnome = 'BRW'
where pnome = 'ACLT';

delete from projeto
where pnome like 'S%';

select salario from empregado
where salario > '1000';

select enome from empregado
where dnumero = '001';

select pnome from projeto
where pnome = 'KDE';

select dnome from departamento
where dnumero = '002'; 

select dnome from empregado
where dnome like '%i';

select dnome from departamento
where projetos > 3;
