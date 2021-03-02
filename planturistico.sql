create database planAgencias;

create table agencias(
  nit_age varchar(25) primary key,
  nom_age varchar(40) not null,
  tel_age varchar(15) not null,
  dir_age varchar(20) not null
);

create table planTuristico(
  cod_plan varchar(15) primary key,
  nom_plan varchar(30) not null,
  dest_plan varchar(10),
  valor_plan float,
  nit_age varchar(25),
  CONSTRAINT fk_agencia_planTuristico FOREIGN KEY (nit_age) REFERENCES agencias (nit_age)
);

create table clientes(
  cod_cli varchar(15) primary key,
  nom_cli varchar(30) not null,
  tel_cli varchar(10)
);

create table planturistico_clientes(
    cod_plan varchar(15),
    cod_cli varchar(15),
  CONSTRAINT fk_planturistico_plan FOREIGN KEY (cod_plan) REFERENCES planTuristico (cod_plan),
  CONSTRAINT fk_planturistico_clientes FOREIGN KEY (cod_cli) REFERENCES clientes (cod_cli)
);

INSERT INTO agencias (nit_age,nom_age,tel_age,dir_age) values
('ag1', 'on vacation','8974512','cll 62 # 8-45'),
('ag2', 'aviatur','8977865','cll 63 # 9-46'),
('ag3', 'viajar','8975263','cll 64 # 10-47'),
('ag4', 'norte y sur','8971234','cll 65 # 11-48'),
('ag5', 'buen turismo','8979874','cll 66 # 12-49');

INSERT INTO planTuristico (cod_plan,nom_plan,dest_plan,valor_plan) values
('pl1','plan aniversario','cartagena',785000),
('pl2','plan amigos','san andres',1199000),
('pl3','plan familia','panaca',250000),
('pl4','plan aventurero','Amazonas',1800000),
('pl5','plan relax','termales',100000);

INSERT INTO clientes (cod_cli,nom_cli,tel_cli) values
('cl1','Geraldy','5414251'),
('cl2','Mariana','5413596'),
('cl3','andrea','5417412'),
('cl4','pablo','9879852'),
('cl5','ruben','8873594');

INSERT INTO planturistico_clientes (cod_plan,cod_cli) values
('pl1','cl1'),
('pl1','cl5'),
('pl3','cl3'),
('pl2','cl4'),
('pl4','cl2');
