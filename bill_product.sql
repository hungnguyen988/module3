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

insert into order_detail
values(1,1,3),
(3,1,7),
(4,1,2),
(1,2,1),
(1,3,8),
(5,2,4),
(3,2,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng `order`

select `order`.id,`order`.date_order,`order`.total_price
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

select customer.name,product.name
from `order`
join customer on customer.id = `order`.customer_id
join order_detail on `order`.id = order_detail.order_id
join product on product.id = order_detail.product_id
group by customer.name,product.name
order by customer.name asc
;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

select customer.name
from customer
left join `order` on customer.id = `order`.customer_id
where `order`.customer_id is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)

select o.id,o.date_order,sum(p.price*od.quantity) as total_money
from `order` o
join order_detail od on o.id = od.order_id
join product p on p.id = od.product_id
group by o.id;

