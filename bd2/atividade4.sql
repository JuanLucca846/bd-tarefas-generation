create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    vocacao varchar(255) not null,
    magias varchar(255) not null,
    primary key(id)
);

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255),
    levelpersonagem int,
    skill int,
    hp int,
    mp int,
    primary key(id)
);

insert into tb_classes(vocacao, magias)
values("knight", "exori gran"),
("druid", "exevo gran mas frigo"),
("sorcerer", "exevo gran mas flam"),
("paladin", "exevo mas san"),
("sem vocacao", "sem magia");

insert into tb_personagens(nome, levelpersonagem, skill, hp, mp, ataque, defesa, classedid)
values("knight teste", 500, 100, 10000, 5000, 4500, 2500, 1),
("druid teste", 500, 100, 5000, 15000, 2000, 1500, 2),
("sorcerer teste", 500, 110, 5000, 15000, 5000, 1500, 3),
("paladin teste", 500, 125, 8000, 10000, 2000, 2000, 4),
("sem voc teste", 10, 10, 200, 100, 20, 10, 5);

select * from tb_classes;

select * from tb_personagens;

alter table tb_personagens
add ataque int,  add defesa int;

alter table tb_personagens
add classedid bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classedid) REFERENCES tb_classes (id);

select ataque from tb_personagens where ataque > 2000;

select ataque from tb_personagens where ataque between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_personagens.classedid = tb_classes.id;

select * from tb_personagens inner join tb_classes on tb_personagens.classedid = tb_classes.id where tb_classes.vocacao = "sorcerer";
