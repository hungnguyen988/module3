create database if not exists `student_management`;

use `student_management`;

create table student(
id int primary key ,
name varchar(250),
age int ,
country varchar(50)
);



create table if not exists class(
id int primary key auto_increment,
name varchar(200)
);


create table teacher(
id int ,
name varchar(200),
age int ,
country varchar(50)
);

insert into  student values( 1,"hung",26,"vietnam");
select * from student;

insert into student 
values(2,"john",24,"my"),
(3,"phuong",25,"vietnam");

alter table student modify id int auto_increment;
alter table class add column(quantity int);

update student set name = "minh" where id = 3;

delete from student where id = 2;


