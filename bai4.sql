create database Truong;

use Truong;

create table GiaoVien(
	id int primary key auto_increment,
    name varchar(50)
);

create table HocSinh(
	id int primary key auto_increment,
    name varchar(50),
    id_giaovien int,
    foreign key(id_giaovien) references GiaoVien(id)
);