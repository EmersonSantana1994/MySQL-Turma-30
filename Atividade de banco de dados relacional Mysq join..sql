use db_generation_game_online;

create table tb_classe (id_classe int (11) not null, nome varchar (50) not null, editora varchar (11) not null, valor int (11) not null,
primary key (id_classe)) engine InnoDB;


create table tb_personagem (id_personagem int (11) not null, nome varchar (50) not null, timee int (11)  not null, valordetranfer int (11) not null, nacionalidade varchar (20) not null,
foreign key (id_personagem) references tb_classe (id_classe),
primary key  (id_personagem)) engine InnoDB;

desc tb_personagem;

insert into tb_classe values (1,'Fifa', 'EA', 250);
insert into tb_classe values (2,'Pes', 'Konami', 200);
insert into tb_classe values (3,'Brazukas', 'Novel', 100);

select * from tb_classe;

insert into tb_personagem values (1,'Messi', '35', 3000000, 'Argentina');
insert into tb_personagem values (2,'Neymar', '30', 4000000, 'Brasil');
insert into tb_personagem values (3,'Lewandovisk', '32', 2500000, 'Polonia');
insert into tb_personagem values (4,'Cristiano Ronaldo', '36', 2000000, 'Portugal');

select * from tb_personagem;


select * from tb_personagem where valordetranfer > 2600000;

select * from tb_personagem where valordetranfer > 2600000;


select * from tb_personagem where valordetranfer between 2500000 and 3000000;

select * from tb_personagem  where nome like 'M%';

select * from tb_personagem;

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem a
inner join tb_classe b
on a.id_personagem = b.id;

select * from tb_classe where  nome;


DROP  table tb_classe;
DROP  table tb_personagem;