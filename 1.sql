create database store_management;

use store_management;

create table product(
	id int primary key auto_increment,
    name varchar(50) not null,
    description varchar(50),
    price double,
    stock int
);
select * from product;

-- a.
-- b chèn mà không chỉ định tên cột
INSERT INTO product VALUES (1, 'Máy in', 'Màu, đa chức năng', 5.000, 8);
-- c sử dụng lệnh và chỉ định rõ tên cột
insert into product (id, name, description,price,stock) value ( 2,"may tinh","tot",15.000,5);

-- d chỉ định rõ tên cột và không nhập dữ liệu cho các cột cho phép null
insert into product (name) value ( "dien thoai");
insert into product (name, description,price,stock) value ( "dien thoai", null, null, null);

-- truy vấn dữ liệu
-- liệt kê toàn bộ thông tin của product
select * from product;

-- liệt kê id, name,price của tất cả sản phẩm
select id,name,price from product;
-- liệt kê id, name,price của tất cả sản phẩm dưới 10tr
select id,name,price from product where price < 10.000;

-- cap nhat du lieu

SET SQL_SAFE_UPDATES = 0;
--
update product set stock = 100;

update product set name = "laptop" where id = 2;

SET SQL_SAFE_UPDATES = 1; 

-- Chỉnh sửa bảng
-- thêm trường barcode với tất cả dữ liệu là null
alter table product add barcode varchar(50) null;

-- thêm trường warranty với giá trị là 6 tháng
alter table product add column warranty varchar(20) default ' 6 tháng' ;


-- xoá dữ liệu
delete 	from product;

delete from product where id = 2;

-- xoá bảng
drop table product;

-- xoá cơ sở dữ liệu
drop database store_management;

drop database if exists store_management;
