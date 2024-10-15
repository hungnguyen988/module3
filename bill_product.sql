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
