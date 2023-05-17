use master;
drop database if exists FB;
go
create database FB;
go
use FB;

create table objava(
	sifra int not null primary key identity(1,1),
	naslov varchar(50) not null,
	upis varchar(250) not null,
	osoba int not null,
	ipadresa varchar(20),
	vrijemeizrade datetime not null,
);
create table svidamise(
	sifra int not null primary key identity(1,1),
	vrijemesvidanja datetime not null,
	objava int not null,
	osoba int not null,
);
create table osoba(
	sifra int not null primary key identity(1,1),
	ime varchar(25) not null,
	prezime varchar(25) not null,
	datumrodenja datetime,
	email varchar(50) not null,
	lozinka varchar(60) not null,
	brojtel int,
	slika varchar(100),
	administrator bit not null,
	stanje bit not null,
	aktivan bit not null,
	uniqueid varchar(255),
);
create table komentar(
	sifra int not null primary key identity(1,1),
	vrijemekomentiranja datetime not null,
	opis varchar(250),
	objava int not null,
	osoba int not null,
);
create table svidamise_komentar(
	sifra int not null primary key identity(1,1),
	osoba int not null,
	komentar int not null,
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

insert into smjer
values ('Web programiranje ŠÈ',250,1473.82,73,1);

