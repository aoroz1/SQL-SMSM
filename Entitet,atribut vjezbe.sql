use master;
drop database if exists edunovawp1;
go
create database edunovawp1;
go
use edunovawp1;

create table frizerskisalon(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj int
);

create table usluga(
	naziv varchar(50),
	cijena decimal(18,2),
	imedjelatnice varchar(50)
);

create table korisnik(
	ime varchar(50),
	spol varchar(50),
	dob int
);

create table taksisluzba(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj int
);

create table vozac(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table putnik(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table postolar(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table pkorisnik(
	ime varchar(50),
	kolicinaobuce int,
	velicinaobuce int
);

create table popravak(
	cijena decimal(18,2),
	trajanje int,
);

create table restoran(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj int
);

create table jelo(
	naziv varchar(50),
	cijena decimal(18,2),
	nazivkategorije varchar(50)
);

create table pice(
	naziv varchar(50),
	cijena decimal(18,2),
	postotakalkohola decimal(18,2)
);

