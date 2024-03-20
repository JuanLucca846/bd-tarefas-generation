create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
curso varchar(255) not null,
periodo varchar(255) not null,
nota decimal not null,
primary key(id)
);

alter table tb_estudantes modify column nota decimal(5, 2);

insert into tb_estudantes (nome, curso, periodo, nota)
values('John Doe', 'Engenharia Civil', "noturno", 8.5),
('Jane Doe', 'Psicologia', "vespertino", 7.2),
('John Doe', 'Medicina', "vespertino", 9.0),
('Jane Doe', 'Economia', "vespertino", 8.0),
('John Doe', 'Direito', "noturno", 7.8),
('Jane Doe', 'Ciência da Computação', "noturno", 8.9),
('John Doe', 'Administração de Empresas', "matutino", 7.5),
('Jane Doe', 'Biologia', "matutino", 8.3);

select * from tb_estudantes;

select nome, nota from tb_estudantes where nota > 9;

select nome, nota from tb_estudantes where nota > 7;

select nome, nota from tb_estudantes where nota < 7;

update tb_estudantes set nota = 2.0 where id = 16;

delete from tb_estudantes where id = 16;