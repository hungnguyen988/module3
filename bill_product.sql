create database if not exists `bill`;

use bill;

create table customer(
id int primary key auto_increment,
name varchar(50),
age tinyint
);

create table product(
id int primary key auto_increment,
name varchar(50),
price float
);

create table `order`(
id int primary key auto_increment,
date_order date,
total_price int,
customer_id int,
foreign key (customer_id) references customer(id)
);

create table order_detail(
product_id int,
order_id int,
quantity int,
primary key (product_id,order_id),
foreign key (product_id) references product(id),
foreign key (order_id) references `order`(id)
);

insert into customer(name , age)
values('minh quan',10),
('ngoc oanh',20),
('hong ha',50);

insert into `order`(date_order,total_price,customer_id)
values('2006-03-21',null,1),
('2006-03-23',null,2),
('2006-03-16',null,1);

insert into product(name,price)
values('may giat',3),
('tu lanh',5),
('dieu hoa',7),
('quat',1),
('bep dien',2);
