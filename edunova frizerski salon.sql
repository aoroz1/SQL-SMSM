use master;
drop database if exists edunovawp1;
go
create database edunovawp1;
go
use edunovawp1;

create table frizerskisalon(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj char(10)
);

create table usluga(
	naziv varchar(50),
	cijena decimal(18,2),
	imedjelatnice varchar(50),
);

create table korisnik(
	ime varchar(50),
	spol varchar(50),
	dob int,
);