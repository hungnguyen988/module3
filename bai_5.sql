create database demo;

use demo;

create table products(
id int primary key auto_increment ,
`code` varchar(20),
`name` varchar(50),
price double,
amount int ,
`description` varchar(100),
`status` bit
);

insert into products
values(1,'pr01','áo',10,5,'áo thun',1),
(2,'pr02','quần',15,3,'quần jean',1),
(3,'pr03','mũ',10,10,'mũ lưỡi trai',1),
(4,'pr04','giày',15,7,'giày da',1);

drop index idx_code on products;
explain select * from products where `code` = 'pr04';

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create index idx_code on products(`code`);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create index idx_name_price on products(`name`,price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain select * from products where `code` = 'pr04';
explain select * from products where `name` = 'mũ' and price = 10;


-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products

create view view_products
as 
select products.`code`,products.`name`,products.price,products.`status` 
from products ;

-- Tiến hành sửa đổi view

-- Tiến hành xoá view
drop view view_products;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure procedure_products()
begin
select * from products;
end // 
delimiter ;

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure procedure_add(id int, `code` varchar(20),`name` varchar(50),price double,amount int, `description` varchar(100),`status` bit)
begin
insert into products
value(id,`code`,`name`,price,amount,`description`,`status`);
end //
delimiter ;

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure procedure_update(id int , price double)
begin
update products 
set products.price = price
where products.id = id ;
end //
delimiter ;

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure procedure_delete(id int)
begin
delete from products where  products.id = id ;
end //
delimiter ;