create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal not null,
quantidade int not null,
paisorigem varchar(255) not null,
primary key(id)
);

insert into tb_produtos(nome, valor, quantidade, paisorigem)
values("cadeira", 100.00, 20, "Brasil"),
("mesa", 500.00, 50, "China"),
("armario", 600.00, 20, "China"),
("geladeira", 1500.00, 10, "Brasil"),
("computador", 300.00, 50, "China");

select * from tb_produtos;

select nome, valor from tb_produtos where valor > 500.00;

select nome, valor from tb_produtos where valor < 500.00;

update tb_produtos set valor = 80.00, quantidade = 10 where id = 1;