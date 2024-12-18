create database case_sutdy;

use case_sutdy;

create table vi_tri(
ma int primary key auto_increment,
ten varchar(45)
);

create table trinh_do(
ma int primary key auto_increment,
ten varchar(45)
);

create table bo_phan(
ma int primary key auto_increment,
ten varchar(45)
);

create table nhan_vien(
ma int primary key auto_increment,
ho_ten varchar(45),
ngay_sinh date ,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45), 
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int , 
ma_bo_phan int ,
foreign key (ma_vi_tri) references vi_tri(ma),
foreign key (ma_trinh_do) references trinh_do(ma),
foreign key (ma_bo_phan) references bo_phan(ma)
);

create table loai_khach(
ma int primary key auto_increment,
ten varchar(45)
);

create table khach_hang(
ma int primary key auto_increment,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45), 
dia_chi varchar(45),
ma_loai_khach int,
foreign key (ma_loai_khach) references loai_khach(ma)
);


create table loai_dich_vu(
ma int primary key auto_increment,
ten varchar(45)
);

create table kieu_thue(
ma int primary key auto_increment,
ten varchar(45)
);

create table dich_vu(
ma int primary key auto_increment,
ten varchar(45),
dien_tich double,
chi_phi_thue double,
so_nguoi_toi_da int,
tieu_chua_phong varchar(45),
tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_kieu_thue int,
ma_loai_dich_vu int,
foreign key (ma_kieu_thue) references kieu_thue(ma),
foreign key (ma_loai_dich_vu) references loai_dich_vu(ma)
);

create table hop_dong(
ma int primary key auto_increment,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key(ma_nhan_vien) references nhan_vien(ma),
foreign key(ma_khach_hang) references khach_hang(ma),
foreign key(ma_dich_vu) references dich_vu(ma)
);

create table dich_vu_di_kem(
ma int primary key auto_increment,
ten varchar(45),
gia double,
don_vi varchar(10),
trang_thai varchar(45)
);

create table hop_dong_chi_tiet(
ma int primary key auto_increment,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int,
foreign key(ma_hop_dong) references hop_dong(ma),
foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma)
);

insert into vi_tri(ten)
values('quản lý'),
('nhân viên');

insert into trinh_do(ten)
values('trung cấp'),
('cao đẳng'),
('đại học'),
('sau đại học');

insert into bo_phan(ten)
values('sale-makerting'),
('hành chính'),
('phục vụ'),
('quản lý');

insert into nhan_vien
values(1,'Nguyễn Văn An','1970-11-07','456231786',10000000,'0901234121','annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1),
(2,'Lê Văn Bình','1997-04-09','654231234',7000000,'0934212314','binhlv@gmail.com','22 Yên Bái, Đà Nẵng',1,2,2),
(3,'Hồ Thị Yến','1995-12-12','999231723',14000000,'0412352315','thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2),
(4,'Võ Công Toản','1980-04-04','123231365',17000000,'0374443232','toan0404@gmail.com','77 Hoàng Diệu, Quảng Trị',1,4,4),
(5,'Nguyễn Bỉnh Phát','1999-12-09','454363232',6000000,'0902341231','phatphat@gmail.com','43 Yên Bái, Đà Nẵng',	2,1,1),
(6,'Khúc Nguyễn An Nghi','2000-11-08','964542311',7000000,'0978653213','annghi20@gmail.com','294 Nguyễn Tất Thành, Đà Nẵng',2,2,3),
(7,'Nguyễn Hữu Hà','1993-01-01','534323231',8000000,'0941234553','nhh0101@gmail.com','4 Nguyễn Chí Thanh, Huế',2,3,2),
(8,'Nguyễn Hà Đông','1989-09-03','234414123',9000000,'0642123111','donghanguyen@gmail.com','111 Hùng Vương, Hà Nội',2,4,4),
(9,'Tòng Hoang','1982-09-03','256781231',6000000,'0245144444','hoangtong@gmail.com','213 Hàm Nghi, Đà Nẵng',2,4,4),
(10,'Nguyễn Công Đạo','1994-01-08','755434343',8000000,	'0988767111','nguyencongdao12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);

insert into loai_khach(ten)
values('diamond'),
('platinium'),
('gold'),
('silver'),
('membber');

insert into khach_hang
values(1,'Nguyễn Thị Hào','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng',5),
(2,'Phạm Xuân Diệu','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Thái Phiên, Quảng Trị',3),
(3	,'rương Đình Nghệ',	'1990-02-27',	1,	'488645199',	'0373213122',	'nghenhan2702@gmail.com',	'K323/12 Ông Ích Khiêm, Vinh',1),
(4,'Dương Văn Quan',	'1981-07-08',	1,	'543432111',	'0490039241',	'duongquan@gmail.com',	'K453/12 Lê Lợi, Đà Nẵng',1),
(5,'Hoàng Trần Nhi Nhi',	'1995-12-09',	0,	'795453345'	,'0312345678'	,'nhinhi123@gmail.com'	,'224 Lý Thái Tổ, Gia Lai',4),
(6,'Tôn Nữ Mộc Châu',	'2005-12-06',0,	'732434215',	'0988888844',	'tonnuchau@gmail.com',	'37 Yên Thế, Đà Nẵng',4),
(7,'Nguyễn Mỹ Kim',	'1984-04-08',	0,	'856453123',	'0912345698',	'kimcuong84@gmail.com',	'K123/45 Lê Lợi, Hồ Chí Minh',1),
(8,'Nguyễn Thị Hào',	'1999-04-08',	0,	'965656433',	'0763212345',	'haohao99@gmail.com',	'55 Nguyễn Văn Linh, Kon Tum',3),
(9,'Trần Đại Danh',	'1994-07-01',	1,	'432341235',	'0643343433',	'danhhai99@gmail.com',	'24 Lý Thường Kiệt, Quảng Ngãi',1),
(10,'Nguyễn Tâm Đắc',	'1989-07-01',	1,	'344343432',	'0987654321',	'dactam@gmail.com',	'22 Ngô Quyền, Đà Nẵng',2);

insert into kieu_thue(ten)
values('year'),
('month'),
('day'),
('hour');

insert into loai_dich_vu(ten)
values('villa'),
('house'),
('room');

insert into dich_vu
values(1,'Villa Beach Front',25000,10000000,10,	'vip',	'Có hồ bơi',500,4,3,1),
(2,'House Princess 01',14000,5000000,7,'vip','Có thêm bếp nướng',null,3,2,2),
(3,'Room Twin 01',5000,1000000,2,'normal','Có tivi',null,null,4,3),
(4,'Villa No Beach Front',22000,9000000,8,'normal','Có hồ bơi',300,3,3,1),
(5,'House Princess 02',10000,4000000,5,'normal','có thêm bếp nướng',null,2,3,2),
(6,'Room Twin 02',3000,900000,2,'normal','Có tivi',	null,null,4,3);

insert into dich_vu_di_kem(ten,gia,don_vi,trang_thai)
values('karaoke',10000,'giờ','tiện nghi,hiện đại'),
('thuê xe máy',10000,'chiếc','hỏng 1 xe'),
('thuê xe đạp',20000,'chiếc','tốt'),
('buffet buổi sáng',15000,'suất','đầy đủ đồ ăn,tráng miệng'),
('buffet buổi trưa',90000,'suất','đầy đủ đồ ăn,tráng miệng'),
('buffet buổi tối',16000,'suất','đầy đủ đồ ăn,tráng miệng');

insert into hop_dong
values(	1,'2020-12-08','2020-12-08',0,3,1,3),
(2,'2020-07-14','2020-07-21',200000,7,3,1),
(3,'2021-03-15','2021-03-17',50000,3,4,2),
(4,'2021-01-14','2021-01-18',100000,7,5,5),
(5,'2021-07-14','2021-07-15',0,7,2,6),
(6,'2021-06-01','2021-06-03',0,7,7,6),
(7,'2021-09-02','2021-09-05',100000,7,4,4),
(8	,'021-06-17',	'2021-06-18',	150000,	3,	4,	1),
(9	,'2020-11-19',	'2020-11-19',	0,	3,	4,	3),
(10,	'2021-04-12',	'2021-04-14',	0,	10,	3,	5),
(11,'2021-04-25',	'2021-04-25',	0,	2,	2,	1),
(12,'2021-05-25',	'2021-05-27',	0,	7,	10,	1);

insert into hop_dong_chi_tiet(so_luong,ma_hop_dong,ma_dich_vu_di_kem)
values(5,2,4),
(8,2,5),
(15,2,6),
(1,3,1),
(11,3,2),
(1,1,3),
(2,1,2),
(2,12,2);


-- Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự
    
    select *
    from nhan_vien 
    where ho_ten like '% H%'
    or ho_ten like '% T%'
    or ho_ten like '% K%'
    group by nhan_vien.ma
    having length(ho_ten)<=15
    and ho_ten REGEXP ' [HTK][^ ]*$';
   
-- Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”

select *
from khach_hang
where timestampdiff(year,khach_hang.ngay_sinh,curdate()) between 18 and 50
group by khach_hang.ma
having khach_hang.dia_chi like '% Đà Nẵng'
or khach_hang.dia_chi like '% Quảng Trị';

-- Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

select khach_hang.ho_ten,count(ma_khach_hang) as so_lan
from khach_hang
join hop_dong on khach_hang.ma = hop_dong.ma_khach_hang
join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma
where loai_khach.ten like 'diamond'
group by khach_hang.ma 
order by so_lan asc;

-- Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select kh.ma,kh.ho_ten,lk.ten,hd.ma,dv.ten,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,(dv.chi_phi_thue+sum(hdct.so_luong*dvdk.gia)) as tong_tien 
from khach_hang kh
left join hop_dong hd on hd.ma_khach_hang = kh.ma
left join loai_khach lk on lk.ma = kh.ma_loai_khach
left join dich_vu dv on dv.ma = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma
left join dich_vu_di_kem dvdk on dvdk.ma = hdct.ma_dich_vu_di_kem 
group by kh.ma,kh.ho_ten,lk.ten,hd.ma,dv.ten,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc; 


-- 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).

select dv.ma,dv.ten,dv.dien_tich,dv.chi_phi_thue,ldv.ten,hd.ngay_lam_hop_dong
from dich_vu dv
left join hop_dong hd on hd.ma_dich_vu = dv.ma
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma 
WHERE NOT EXISTS (
    SELECT 1 
    FROM hop_dong hd_sub 
    WHERE hd_sub.ma_dich_vu = dv.ma 
    AND (hd_sub.ngay_lam_hop_dong between '2021-01-01' and '2021-03-31'
    )
)
group by dv.ma;
 
 
 -- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu
 -- của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng 
 -- chưa từng được khách hàng đặt phòng trong năm 2021.
 
 select dv.ma,dv.ten,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten
 from hop_dong hd
 join dich_vu dv on dv.ma = hd.ma_dich_vu
 join loai_dich_vu ldv on ldv.ma = dv.ma_loai_dich_vu
 where year(ngay_lam_hop_dong) = 2020
 and hd.ma_dich_vu not  in(
 select hd.ma_dich_vu
 from hop_dong hd
 where year(ngay_lam_hop_dong) = 2021)
 group by hd.ma_dich_vu;
 
 -- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau
 -- Cách 1:
 select khach_hang.ho_ten
 from khach_hang 
 group by khach_hang.ho_ten;
 
 -- Cách 2:
 select distinct khach_hang.ho_ten
 from khach_hang;
 
 -- Cách 3:
 select kh.ho_ten
 from khach_hang kh
 where not exists
 (select 1 from khach_hang kh2 
 where kh.ho_ten = kh2.ho_ten
 and kh2.ma <kh.ma);
 
 -- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 
 -- thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
-- Cách 1:
 select '01' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-01-%' 
 having so_lan >0 
 union all
 select '02' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-02%'
 having so_lan >0 
  union all
 select '03' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-03%'
 having so_lan >0 
  union all
 select '04' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-04%'
 having so_lan >0 
  union all
 select '05' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-05%'
 having so_lan >0 
  union all
 select '06' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-06%'
 having so_lan >0 
  union all
 select '07' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-07%'
 having so_lan >0 
  union all
 select '08' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-08%'
 having so_lan >0 
  union all
 select '09' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-09%'
 having so_lan >0 
  union all
 select '10' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-10%'
 having so_lan >0 
  union all
 select '11' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-11%'
 having so_lan >0 
  union all
 select '12' as thang,count(ngay_lam_hop_dong) as so_lan
 from hop_dong hd
 where ngay_lam_hop_dong like '2021-12%'
 having so_lan >0 
;
-- Cách 2
 select   month(ngay_lam_hop_dong) , count(month(ngay_lam_hop_dong))
 from hop_dong hd
 where year(ngay_lam_hop_dong) = 2021 
 group by month(ngay_lam_hop_dong)
 order by ngay_lam_hop_dong asc;
 
 -- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. 
 -- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem 
 -- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).

select hd.ma as ma_hop_dong, hd.ngay_lam_hop_dong as ngay_lam_hop_dong, hd.ngay_ket_thuc as ngay_ket_thuc, hd.tien_dat_coc as tien_dat_coc, ifnull(sum(so_luong),0)  as tong_so_dich_vu_di_kem 
from hop_dong hd
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma
group by hd.ma ; 
 
 -- 20.Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm 
 -- id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
 
 select nv.ma,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi
 from nhan_vien nv
union
select kh.ma,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi
from khach_hang kh;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Đà Nẵng” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “25/04/2021”.

create view v_nhan_vien 
as
select nv.*
from nhan_vien nv
join hop_dong hd on hd.ma_nhan_vien = nv.ma
where dia_chi like '%Đà Nẵng'
and hd.ngay_lam_hop_dong like '2021-04-25%';

-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” 
-- đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
-- (cách này chỉ áp dụng cho updatable view , còn nếu là non-updatable view thì chỉ có thể cập nhật trực tiếp vào bảng nhân viên)
update nhan_vien 
set dia_chi = '22 Nguyễn Lương Bằng, Đà Nẵng'
where ma in(select ma from v_nhan_vien);




 
