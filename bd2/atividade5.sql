create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    primary key(id)
);

create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255),
    preco decimal(10, 2) not null,
    categorias_id bigint,
    primary key(id),
    foreign key(categorias_id) references tb_categorias(id)
);


insert into tb_categorias (nome, descricao) 
values('Clássicas', 'Tradicionais'),
('Especiais', 'Diferenciadas'),
('Doces', 'Açucaradas'),
('Vegetarianas', 'Sem carne'),
('Veganas', 'Sem ingredientes de origem animal');


insert into tb_pizzas (nome, descricao, preco, categorias_id) 
values('Margherita', 'Molho e queijo', 20.00, 1),
('Pepperoni', 'Salame picante', 22.00, 1),
('Frango Catupiry', 'Frango cremoso', 25.00, 2),
('Portuguesa', 'Presunto e ovo', 24.00, 2),
('Chocolate', 'Doce saboroso', 18.00, 3),
('Banana Canela', 'Fruta e tempero', 20.00, 3),
('Margarita', 'Vegetais frescos', 23.00, 4),
('Vegana', 'Sem ingredientes de origem animal', 26.00, 5);

select * from tb_categorias;

select * from tb_pizzas;

select preco from tb_pizzas where preco > 24.00;

select preco from tb_pizzas where preco between 15.00 and 20.00;

select * from tb_pizzas where nome like "%m%";

select * from tb_pizzas inner join tb_categorias on categorias_id = tb_categorias.id; 

select * from tb_pizzas inner join tb_categorias on categorias_id = tb_categorias.id where tb_categorias.nome = "doces"; 