create database Bank;
use Bank;

create table KhachHang(
	id int primary key auto_increment,
    name varchar(50)
);

create table TaiKhoan(
	id_taikhoan int primary key auto_increment,
    sodu decimal (10,2),
    id_khachhang int,
    foreign key(id_khachhang) references KhachHang(id)
);