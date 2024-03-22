create database db_rh;

use db_rh;

create table colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal not null,
idade int not null,
primary key(id)
);

rename table colaboradores to tb_colaboradores;

insert into tb_colaboradores(nome, cargo, salario, idade)
values("john doe", "dev jr", 2000.00, 25),
("jane doe", "dev pl", 5000.00, 26),  
("john doe", "dev sr", 11000.00, 27),  
("jane doe", "estagio", 1000.00, 28),  
("john doe", "dev sr", 11000.00, 29);  

select * from tb_colaboradores;

select nome, salario from tb_colaboradores where salario > 2000;

select nome, salario from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 1500.00 where id = 4;