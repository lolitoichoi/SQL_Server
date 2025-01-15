create database StoreBook;

use StoreBook;

create table Book(
	id varchar(50) primary key,
    name varchar(50),
    gia double,
    id_author varchar(50),
    foreign key(id_author) references Author(id)
);

create table Author(
	id varchar(50) primary key ,
    name varchar(50)
);
    
create table Staff(
	id varchar(50) primary key ,
    name varchar(50),
    diachi varchar(50)
);

create table nhanvien_sach(
	id_book varchar(50),
    id_nhanvien varchar(50),
    primary key(id_book,id_nhanvien),
    foreign key(id_book) references Book(id),
    foreign key(id_nhanvien) references Staff(id)
);