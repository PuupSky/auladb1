create database db_estacionamento;
use db_estacionamento;

create table tb_prop(
nr_cpf bigint primary key not null,
nm_prop varchar(45) not null,
id_rgprop varchar(45) not null,
dt_nascimento date not null);

create table tb_veiculo(
cd_placa varchar(7) primary key not null,
nm_marca varchar(45) not null,
nm_modelo varchar(45) not null,
ds_cor varchar(45),
fk_nr_cpf bigint not null,
foreign  key (fk_nr_cpf) 
references tb_prop(nr_cpf));

insert into tb_prop values
('00670960004','Pedro','121921177' ,'2002-2-4' ),
('59106018068', 'isabel','236416066','1995-6-3' ),
('236416066', 'Mercedez','358022095', '1984-12-15');

insert into tb_veiculo values
('EHUDSI1', 'FORD', 'FUSION','BRANCA','00670960004'), 
('FLAO7A7','KIA', 'PICANTO','VERMELHA','59106018068'),
('BS229AS', 'FIAT', 'TORO','PRETO', '236416066');        

insert into tb_prop values
('00670966584','Eleanor','121945877' ,'2000-2-8' ),
('59106089568', 'Jacob','237896066','1987-6-5' ),
('236956847', 'Juan','453622095', '1998-3-12');

insert into tb_veiculo values
('EHU5OS8', 'FORD', 'RANGER','AZUL','236956847'), 
('ASODKD1','FORD', 'TERRITORY','CINZA','00670960004'),
('BET4AS5', 'PEUGEOT', 'HATCH','PRETO', '59106018068'),
('M24AS1', 'PEUGEOT', 'SUV','BRANCA','59106018068'), 
('FLOS417','VOLKSWAGEN', 'JETTA','PRETO','00670966584'),
('BS2DSAS', 'VOLKSWAGEN', 'VIRTUS','PRATA', '00670966584'),
('SADI131', 'KIA', 'FUSION','PRETA','59106089568'), 
('POLS3I1','CHEVROLET', 'ONIX','VERMELHA','59106089568'),
('LO2SIW5', 'VOLKSWAGEN', 'GOLF','VERDE', '236956847');

update tb_veiculo
set ds_cor = 'BRANCA'
where cd_placa = 'FLAO7A7';
update tb_veiculo
set ds_cor = 'marrom'
where cd_placa = 'BET4AS5';
update tb_prop
set nm_prop = 'Ranni'
where nr_cpf ='59106018068';
update tb_veiculo
set nm_marca = 'Bazinga'
where cd_placa = 'M24AS1';
update tb_veiculo
set ds_cor = 'amarelo'
where cd_placa = 'SADI131';

delete from tb_veiculo where cd_placa ='LO2SIW5';
delete from tb_veiculo where cd_placa ='BS2DSAS';











select * from tb_prop;
select * from tb_veiculo 
