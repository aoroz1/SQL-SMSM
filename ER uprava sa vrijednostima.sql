use master;
drop database if exists uprava;
go
create database uprava;
go
use uprava;

create table zupan(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table zupanija(
	id int not null primary key identity(1,1),
	zupan int not null,
	naziv varchar(50) not null
);

create table opcina(
	id int not null primary key identity(1,1),
	zupanija int not null,
	naziv varchar(50) not null
);

create table mjesto(
	id int not null primary key identity(1,1),
	opcina int not null,
	naziv varchar(50) not null
);

create table ulica(
	id int not null primary key identity(1,1),
	mjesto int not null,
	naziv varchar(50) not null
);

alter table zupanija add foreign key(zupan) references zupan(id);
alter table opcina add foreign key(zupanija) references zupanija(id);
alter table mjesto add foreign key(opcina) references opcina(id);
alter table ulica add foreign key(mjesto) references mjesto(id);

--1,3
insert into zupan (ime,prezime)
values ('Ana','Marija'), ('Marija','Tereza'),('Ivan','Ivic');

--1,3
insert into zupanija (zupan,naziv)
values (1,'Zagrebaèka'),(2,'Karlovaèka'),(3,'Zadarska');

--1,3
insert into opcina (zupanija,naziv)
values (1,'Dubravica'),(1,'Brdovec'),(2,'Bosiljevo'),(2,'Josipdol'),(3,'Bibinje'),(3,'Benkovac');