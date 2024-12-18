create database if not exists `quan_ly_sinh_vien`;

use quan_ly_sinh_vien;

create table class(
id int primary key auto_increment,
name varchar(60),
start_date datetime,
status bit
);

create table student(
id int primary key auto_increment,
name varchar(30) not null,
address varchar(50),
phone varchar(20),
status bit,
class_id int not null,
foreign key (class_id) references class(id)
);

create table `subject`(
id int primary key auto_increment,
name varchar(30) not null,
credit tinyint not null default 1 check (credit >=1),
status bit default 1
);

create table mark(
id int primary key auto_increment,
subject_id int not null ,
student_id int not null ,
mark float default 0 check ( mark between 0 and 100),
unique(subject_id,student_id),
foreign key (subject_id) references `subject`(id),
foreign key (student_id) references student(id)
);

alter table class
modify start_date date;

insert into class(name,start_date,status)
values('a1','2008-12-20',1),
('a2','2008-12-22',1),
('b3',current_date(),0);

insert into `subject`(name,credit,status)
values('cf',5,1),
('c',6,1),
('hdj',5,1),
('rdbms',10,1);



insert into student(name, address,phone,status,class_id)
values('hung','ha noi','0912113113',1,1),
('hoa','hai phong',null,1,1),
('manh','hcm','0123123123',0,2);

insert into student(name, address,phone,status,class_id)
values('luu','hai phong','0987654321',1,2),
('minh','ha noi','0987123123',1,1);


alter table mark 
add column exam_time tinyint default 1;

insert into mark(subject_id,student_id,mark,exam_time)
values(1,1,8,1),
(1,2,10,2),
(2,1,12,1);

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * 
from student
where student.name like 'h%';


-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * 
from class 
where class.start_date like '%-12-%';


-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *
from `subject`
where `subject`.credit between 3 and 5;


-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set sql_safe_updates = 0;
update student
set class_id = 2
where name = 'hung';
set sql_safe_updates = 1;



-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select student.name,`subject`.name,mark.mark
from mark
join  `subject` on subject.id = mark.subject_id
join student on student.id = mark.student_id
order by mark.mark desc , student.name asc; 



-- Hiển thị số lượng sinh viên ở từng nơi
select address,count(address) as quantity
from student
group by address;


-- Tính điểm trung bình các môn học của mỗi học viên

select student.name,student.id,avg(mark)
from student
join mark on student.id = mark.student_id
group by student.id;


-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15

select student.name,student.id,avg(mark) as avg_mark
from student
join mark on student.id = mark.student_id
group by student.id
having avg_mark > 15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.

select student.id,student.name,avg(mark) as avg_mark
from student
join mark on student.id = mark.student_id
group by student.id
having avg_mark >= all(select avg(mark) from mark group by mark.student_id);

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subject
where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject.id,subject.name,subject.credit,subject.status
from subject
join mark on subject.id = mark.subject_id
where mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select *
from student
left join mark on student.id = mark.student_id
group by student.id
order by mark.mark desc;

