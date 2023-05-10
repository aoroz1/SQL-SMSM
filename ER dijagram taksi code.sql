use master;
drop database if exists taksi;
go
create database taksi;
go
use taksi;

create table vozac(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	vozilo int not null
);

create table vozilo(
	id int not null primary key identity(1,1),
	marka varchar(50) not null,
	brojtablice int not null
);

create table putnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null, 
);

create table voznja(
	id int not null primary key identity(1,1),
	vozac int not null,
	putnik int not null,
	trajanje int not null
);


alter table voznja add foreign key (vozac) references vozac(id);
alter table voznja add foreign key (putnik) references putnik(id);
alter table vozac add foreign key (vozilo) references vozilo(id);