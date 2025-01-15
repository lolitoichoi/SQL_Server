create database Football;
use Football;

create table Cauthu (
	id int primary key auto_increment,
    name varchar(50),
    id_vitri int,
    soAo int,
    foreign key(id_vitri) references Vitri(id)
);

create table Vitri (
	id int primary key auto_increment
);

create table  Trandau (
	id int primary key auto_increment,
    name varchar(50),
    diadiem varchar(50),
    thoigian date
);

create table thamgia (
	id_cauthu int,
    id_trandau int,
    primary key(id_cauthu, id_trandau),
    foreign key(id_cauthu) references Cauthu(id),
    foreign key(id_trandau) references Trandau(id)
);

create table HLV (
	id int primary key auto_increment,
    name varchar(50),
    ngaysinh date,
    kinhnghiem int
);

create table Doi (s
	id int primary key auto_increment,
    tendoi varchar(50),
    id_HLV int,
    quoctich varchar(50),
    foreign key(id_HLV) references HLV(id)
);

-- update mối quan hệ 1-n đội bóng và cầu thủ
alter table Cauthu add column id_doi int;

alter table Cauthu add constraint fk_cauthu_doi foreign key(id_doi) references Doi(id);
    
    
    
    
    
    