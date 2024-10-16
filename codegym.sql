create database if not exists `codegym`;

use codegym;

create table jame(
username varchar(50) primary key,
pass varchar(50)
);

create table class(
id int primary key auto_increment,
name varchar(50)
);

create table room(
id int primary key auto_increment,
name varchar(50),
class_id int,
foreign key (class_id) references class(id)
);

create table student(
id int primary key auto_increment,
name varchar(50),
gender varchar(50) ,
birth date ,
point float,
email varchar(100),
jame_username varchar(50),
class_id int,
foreign key (jame_username) references jame(username),
foreign key (class_id) references class(id)
);



create table instructor(
id int primary key auto_increment,
name varchar(50),
birth date,
salary int 
);

create table instructor_class(
instructor_id int ,
class_id int,
start_time date,
primary key (instructor_id,class_id),
foreign key (instructor_id) references instructor(id),
foreign key (class_id) references class(id)
);


alter table jame 
alter column pass set default '123';
insert into jame(username)
values('cunn'),('chunglh'),('hoanhh'),('dungd'),('huynhtd'),('hainm'),('namtv'),('hieuvm'),('kynx'),('vulm');

insert into class(name)
values('c1121g1'),
('c1121g1'),
('a0821i1'),
('a0921i1');


alter table student
alter column gender set default '1';

insert into student (name,birth,email,point,jame_username,class_id)
 values("nguyen ngoc cu",'1981-12-12',"cunn@gmail.com",8,"cunn",1),
 ('le hai chung','1981-12-12','chunglh@gmail.com',5,'chunglh',1),
 ('hoang huu huan','1990-12-12','hoanhh@gmail.com',6,'hoanhh',2),
 ('dung dau','1987-12-12','dungd@gmail.com',8,'dungd',1),
 ('ta dinh huynh','1981-12-12','huynhtd@gmail.com',9,'huynhtd',2),
 ('nguyen minh hai','1987-12-12','hainm@gmail.com',9,'hainm',1),
 ('tran van nam','1989-12-12','namtv@gmail.com',4,'namtv',2),
 ('vo minh hieu','1981-12-12','hieuvm@gmail.com',3,'hieuvm',1),
 ('le xuan ky','1981-12-12','kylx@gmmai.com',7,'kynx',2),
 ('le minh vu','1981-12-12','vulm@gmail.com',7,'vulm',1),
 ('nguyen van a','1981-12-12','anv@gmail.com',8,null,null),
 ('tran van b','1981-12-12','btv@gmail.com',5,null,null);
 
 alter table instructor
 alter column birth set default '1985-03-02';
 
 
 insert into instructor(name,salary)
 values('tran van chanh',100),
 ('tran minh chien',200),
 ('vu thanh tien',300);
 
 insert into instructor(name,birth,salary)
 value('tran van nam','1989-12-12',100);
 
 alter table instructor_class
 alter column start_time set default null;
 
 insert into instructor_class(instructor_id,class_id)
 values(1,1),(1,2),(1,3),(2,1),(2,2),(2,3);
 
 insert into room(name , class_id)
 values('Ken',1),
 ('Jam',1),
 ('Ada',2),
 ('Jimmy',2);
 
 update student
 set email = 'kylx@gmmail.com' where id = 9;
 
 update class
 set name = 'c1221g1' where id =2 ;
 
select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id;
 
select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 left join class
 on student.class_id = class.id;
 
select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where student.name = 'nguyen minh hai';
 
select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where student.name like 'nguyen%';
 
 select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where student.name like '%hai' 
 or student.name like '%huynh';
 
 select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where student.point > 5;
 
 
  select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where student.point =4
 or student.point =6
 or student.point =8;
 
 select student.point, count(*) as student_count
 from student
 group by student.point;
 
 select student.point, count(*) as student_count
 from student
 where student.point >5
 group by student.point;
 
 select student.point, count(*) as student_count
 from student
 where student.point >5
 group by student.point
 having student_count >=2;
 
 select student.name,student.gender,student.birth,student.point,student.email,class.name
 from student
 inner join class
 on student.class_id = class.id
 where class.name = 'c1121g1'
 order by student.point desc;
 
-- Hiện thị danh sách các lớp có học viên theo học và số lượng học viên của mỗi lớp
 select class.name,count(student.class_id) as total_student
 from class
 join student
 on student.class_id = class.id
 group by class.id,class.name;
     
-- Tính điểm lớn nhất của mỗi các lớp
  select class.name,max(student.point) as max_point
  from class
  left join student 
  on class.id = student.class_id
  group by class.id,class.name;
  
     
-- Tình điểm trung bình  của từng lớp
select class.name,avg(student.point) as avg_point
  from class
  left join student 
  on class.id = student.class_id
  group by class.id,class.name;


-- Lấy ra toàn bộ tên và ngày sinh các instructor và student ở CodeGym.
select name,birth
from instructor
union all
select name,birth
from student;

-- Lấy ra top 3 học viên có điểm cao nhất của trung tâm.
select *
from student
order by student.point desc
limit 3;


-- Lấy ra các học viên có điểm số là cao nhất của trung tâm.
select *
from student
where student.point =(select max(student.point) from student);

-- lấy ra tất cả các giảng viên chưa từng tham gia giảng dạy

select *
from instructor
left join instructor_class 
on instructor.id = instructor_class.instructor_id
where instructor_class.class_id is null;