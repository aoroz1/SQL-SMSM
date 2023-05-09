use master;
drop database if exists salonzauljepsavanje;
go
create database salonzauljepsavanje;
go
use salonzauljepsavanje;


create table djelatnica(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	spol varchar(50) not null,
);

create table usluga(
	id int not null primary key identity(1,1),
	cijena decimal(18,2) not null,
	naziv varchar(50) not null
);

create table termin(
	id int not null primary key identity(1,1),
	datum datetime not null,
	usluga int not null,
	korisnik int not null,
	djelatnica int not null
);

alter table termin add foreign key(usluga) references usluga(id);
alter table termin add foreign key(korisnik) references korisnik(id);
alter table termin add foreign key(djelatnica) references djelatnica(id);