use master;
drop database if exists muzej;
go
create database muzej;
go
use muzej;

create table izlozba(
	id int not null primary key identity(1,1),
	kustos int not null,
	djelo int not null,
	sponzor int not null,
	naziv varchar(50)
);

create table kustos(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table djelo(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	imeumjetnika varchar(50) not null,
	prezimeumjetnika varchar(50) not null
);

create table sponzor(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	kontaktbroj int not null
);

alter table izlozba add foreign key (kustos) references kustos(id);
alter table izlozba add foreign key (sponzor) references sponzor(id);
alter table izlozba add foreign key (djelo) references djelo(id);