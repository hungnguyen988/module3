create database `quan_ly_vat_tu`;

use quan_ly_vat_tu;

create table if not exists phieu_xuat(
so_phieu int primary key auto_increment,
ngay date
);

create table if not exists phieu_nhap(
so_phieu int primary key auto_increment,
ngay date
);

create table if not exists nha_cung_cap(
ma int primary key auto_increment,
ten varchar(50),
dia_chi varchar(100)
);

create table if not exists so_dien_thoai(
id int primary key auto_increment,
so_dien_thoai varchar(10),
ma_nha_cung_cap int ,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma)
);

create table if not exists vat_tu(
ma int primary key auto_increment ,
ten varchar(50),
ma_nha_cung_cap int,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma)
);

create table if not exists chi_tiet_phieu_nhap(
ma_vat_tu int ,
so_phieu_nhap int,
don_gia float,
so_luong float,
primary key (ma_vat_tu,so_phieu_nhap),
foreign key (ma_vat_tu) references vat_tu(ma),
foreign key (so_phieu_nhap) references phieu_nhap(so_phieu)
 );
 
 create table if not exists chi_tiet_phieu_xuat(
 ma_vat_tu int ,
so_phieu_xuat int,
don_gia float,
so_luong float,
primary key (ma_vat_tu,so_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma),
foreign key (so_phieu_xuat) references phieu_xuat(so_phieu)
 );
 
 create table if not exists don_dat_hang(
 so_dat_hang int primary key auto_increment,
 ngay date
 );
 
 create table if not exists chi_tiet_dat_hang(
 so_dat_hang int ,
 ma_vat_tu int ,
 so_luong float,
 primary key (so_dat_hang,ma_vat_tu),
 foreign key (so_dat_hang) references don_dat_hang(so_dat_hang),
 foreign key (ma_vat_tu) references vat_tu(ma)
 );