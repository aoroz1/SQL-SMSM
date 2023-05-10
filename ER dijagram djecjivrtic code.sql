use master;
drop database if exists dvrtic;
go
create database dvrtic;
go
use dvrtic;

create table odgojnaskupina(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	brojdjece int not null
);

create table dijete(
	id int not null primary key identity(1,1),
	prezime varchar(50) not null,
	ime varchar(50) not null,
	odgojnaskupina int not null
);

create table odgajateljica(
	id int not null primary key identity(1,1),
	prezime varchar(50) not null,
	ime varchar(50) not null,
	odgojnaskupina int not null,
	ssprema int not null
);

create table ssprema(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	nazivustanove varchar(50) not null
);

 alter table dijete add foreign key (odgojnaskupina) references odgojnaskupina(id);
 alter table odgajateljica add foreign key(odgojnaskupina) references odgojnaskupina(id);
 alter table odgajateljica add foreign key(ssprema) references ssprema(id);