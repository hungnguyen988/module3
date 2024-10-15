create database  if not exists `quan_ly_diem_thi`;

use quan_ly_diem_thi;

create table if not exists hoc_sinh(
ma_hs varchar(20) primary key ,
ten_hs varchar(50),
ngay_sinh datetime,
lop varchar(20),
gioi_tinh varchar(20)
);

create table if not exists giao_vien(
ma_gv varchar(20) primary key,
ten_gv varchar(50),
so_dien_thoai varchar(10)
); 

create table if not exists mon_hoc(
ma_mh varchar(20) primary key,
ten_mh varchar(50),
ma_gv varchar(20),
foreign key (ma_gv) references giao_vien(ma_gv)
);

create table if not exists bang_diem(
ma_hs varchar(20),
ma_mh varchar(50),
diem_thi int,
ngay_kt datetime,
primary key(ma_hs,ma_mh),
foreign key (ma_hs) references hoc_sinh(ma_hs),
foreign key (ma_mh) references mon_hoc(ma_mh)
);

