insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dica de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Ritmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer kibe','40','30','2018'),
('10','YouTube','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos;

update cursos 
set nome = 'HTML5'
where idcursos = '1';

update cursos
set nome = 'PHP'
where idcursos = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcursos = '5'
limit 1;

update cursos
set carga = '0', ano = '2018'
where ano = '2050'
limit 1;

delete from cursos
where idcursos = '8';

delete from cursos
where ano '2050'
limit 2;