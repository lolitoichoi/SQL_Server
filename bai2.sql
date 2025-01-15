create database quanlidanhba;

use quanlidanhba;

create table Nguoi(
	id int primary key auto_increment,
    name varchar(50)
);

create table SDT(
	id_sdt int primary key auto_increment,
    sdt int,
    nguoi_id int,
    foreign key(nguoi_id) references Nguoi(id)
);

create table Email(
	id_email int primary key auto_increment,
    diachiMail varchar(50),
    nguoi_id int,
    foreign key(nguoi_id) references Nguoi(id)
);

