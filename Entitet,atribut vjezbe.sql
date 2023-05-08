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

create table salon_usluga(
	naziv varchar(50),
	cijena decimal(18,2),
	imedjelatnice varchar(50)
);

create table salon_korisnik(
	ime varchar(50),
	spol varchar(50),
	dob int
);

create table taksisluzba(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj int
);

create table taksi_vozac(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table taksi_putnik(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table postolar(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table postolar_korisnik(
	ime varchar(50),
	kolicinaobuce int,
	velicinaobuce int
);

create table postolar_popravak(
	cijena decimal(18,2),
	trajanje int,
);

create table restoran(
	naziv varchar(50),
	lokacija varchar(50),
	kontaktbroj int
);

create table restoran_jelo(
	naziv varchar(50),
	cijena decimal(18,2),
	nazivkategorije varchar(50)
);

create table restoran_pice(
	naziv varchar(50),
	cijena decimal(18,2),
	postotakalkohola decimal(18,2)
);

create table muzej(
	naziv varchar(50),
	lokacija varchar(50),
	cijenakarte decimal(18,2)
);

create table muzej_izlozba(
	naziv varchar(50),
	brojedjela int,
	tema varchar(50)
);

create table muzej_kustos(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table fakultet_student(
	ime varchar(50),
	prezime varchar(50),
	smjer varchar(50)
);

create table fakultet_kolegij(
	naziv varchar(50),
	imeprofesora_profesorice varchar(50),
	prezimeprofesora_profesorice varchar(50)
);

create table fakultet_rok(
	datumroka datetime,
	brojprijavljenihstudenata int,
	brojroka int
);

create table odvjetnik(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table odvjetnik_klijent(
	ime varchar(50),
	prezime varchar(50),
	kontaktbroj int
);

create table odvjetnik_obrana(
	brojsuradnikakojisudjeluju int,
	razlogobrane varchar(50),
	kolikojeputaodvjetnikobranio int
);