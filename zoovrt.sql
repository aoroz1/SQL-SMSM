 use master;
drop database if exists zoovrt;
go
create database zoovrt;
go
use zoovrt;

create table zivotinja(
	sifra int not null primary key identity(1,1),
	vrsta varchar(50) not null,
	ime varchar(50) not null,
	djelatnik int not null,
	prostorija int not null,
	datum int not null,
);

create table djelatnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	iban varchar(50) not null
);

create table prostorija(
	sifra int not null primary key identity(1,1),
	dimenzije varchar(50) not null,
	maks_broj int not null, 
	mjesto varchar(50) not null,
);

create table datum(
	sifra int not null primary key identity(1,1),
	d_rodenja datetime not null,
	d_dolaska datetime null, 
	d_smrti datetime not null,
);

alter table zivotinja add foreign key (prostorija) references prostorija(sifra);
alter table zivotinja add foreign key (datum) references datum(sifra);
alter table zivotinja add foreign key (djelatnik) references djelatnik(sifra);


insert into prostorija
values 
('dimeznije01',01,'mjesto01'),
('dimeznije02',02,'mjesto02'),
('dimeznije03',03,'mjesto03')
;

insert into djelatnik
values 
('Ime01','Prezime01','iban01'),
('Ime02','Prezime02','iban02'),
('Ime03','Prezime03','iban03')
;

insert into datum
values 
('2021-01-01','2022-01-01','2023-01-01'),
('2021-02-03','2022-02-02','2023-02-03'),
('2021-03-03','2022-03-03','2023-03-03')
;

update datum set d_smrti='2023-04-04' where sifra=3;
update djelatnik set ime='Alen' where sifra=2;
update prostorija set maks_broj=5 where sifra=1;

delete from datum where sifra=1;
delete from djelatnik where sifra=3;
delete from prostorija where sifra=2;