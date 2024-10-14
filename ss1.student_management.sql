create database if not exists `student_management`;

use `student_management`;

create table student(
id int primary key ,
name varchar(250),
age int ,
country varchar(50)
);



create table class(
id int ,
name varchar(200)
);

create table teacher(
id int ,
name varchar(200),
age int ,
country varchar(50)
);