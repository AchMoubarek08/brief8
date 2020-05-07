CREATE DATABASE école ;
USE école;

drop table if exists Clavier;

drop table if exists Ecole;

drop table if exists Laboratoire;

drop table if exists PcPortable;

drop table if exists Salle;

drop table if exists SalleDeJeu;

drop table if exists Souris;

/*==============================================================*/
/* Table : Clavier                                              */
/*==============================================================*/
create table Clavier
(
   id                   int not null,
   PcP_id               int not null,
   marque               varchar(254),
   primary key (id),
   key AK_Identifiant_1 (id)
);

/*affichage table*/
select *
from Clavier;
/*insert*/
insert into Clavier
values(1,1,'HP');
insert into Clavier
values(2, 2, 'asus');
/*update*/
update Clavier set marque='dell'
where id=1;
/*delete*/
delete from Clavier
where id=1;

/*==============================================================*/
/* Table : Ecole                                                */
/*==============================================================*/
create table Ecole
(
   id                   int not null,
   Sal_id               int,
   Lab_id               int,
   nom                  varchar(254),
   primary key (id),
   key AK_Identifiant_1 (id)
);
/*affichage table*/
select *
from Ecole;
/*insert*/
insert into Ecole
values(1, 1, 1, 'Youcode');
insert into Ecole
values(2, 2, 2, 'Youcode');
/*update*/
update Ecole set nom='1337'
where id=1;
/*delete*/
delete from Ecole
where id=1;

/*==============================================================*/
/* Table : Laboratoire                                          */
/*==============================================================*/
create table Laboratoire
(
   id                   int not null,
   Eco_id               int,
   nom                  varchar(254),
   primary key (id)
   
);
/*affichage table*/
select *
from Laboratoire;
/*insert*/
insert into Laboratoire
values(1, 1, 'spacework');
insert into Laboratoire
values(2, 2, 'spacework');
/*update*/
update Laboratoire set nom='labo-chimie'
where id=1;
/*delete*/
delete from Laboratoire
where id=1;

/*==============================================================*/
/* Table : PcPortable                                           */
/*==============================================================*/
create table PcPortable
(
   id                   int not null,
   Sal_id               int,
   Cla_id               int not null,
   Sou_id               int,
   marque               varchar(254),
   primary key (id)
);
/*affichage table*/
select *
from PcPortable;
/*insert*/
insert into PcPortable
values(1, 1, 1, 1, 'dell');
insert into PcPortable
values(2, 2, 2, 2, 'dell');
/*update*/
update PcPortable set marque='asus'
where id=1;
/*delete*/
delete from PcPortable
where id=1;

/*==============================================================*/
/* Table : Salle                                                */
/*==============================================================*/
create table Salle
(
   id                   int not null,
   Eco_id               int,
   nom                  varchar(254),
   primary key (id)
);
/*affichage table*/
select *
from Salle;
/*insert*/
insert into Salle
values(1, 1, '1');
insert into Salle
values(2, 2, '1');
/*update*/
update Salle set nom='2'
where id=1;
/*delete*/
delete from Salle
where id=1;

/*==============================================================*/
/* Table : SalleDeJeu                                           */
/*==============================================================*/
create table SalleDeJeu
(
   id                   int not null,
   Eco_id               int,
   nom                  varchar(254),
   primary key (id)
);
/*affichage table*/
select *
from SalleDeJeu;
/*insert*/
insert into SalleDeJeu
values(1, 1, 'A');
insert into SalleDeJeu
values(2, 2, 'B');
/*update*/
update SalleDeJeu set nom='2'
where id=1;
/*delete*/
delete from SalleDeJeu
where id=1;

/*==============================================================*/
/* Table : Souris                                               */
/*==============================================================*/
create table Souris
(
   id                   int not null,
   PcP_id               int,
   nom                  varchar(254),
   primary key (id),
   key AK_Identifiant_1 (id)
);
/*affichage table*/
select *
from Souris;
/*insert*/
insert into Souris
values(1, 1, 'Logitech');
insert into Souris
values(2, 2, 'razer');
/*update*/
update Souris set nom='2'
where id=1;
/*delete*/
delete from Souris
where id=1;

/*==============================================================/
 Login and PassWord                                             
/==============================================================*/

/* login Admin with password */
CREATE USER 'youcode'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON *.* TO 'youcode'@'localhost';
FLUSH PRIVILEGES
