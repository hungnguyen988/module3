create table if not exists instructor(
id_instructor int primary key auto_increment,
instructor_name varchar(50),
birth date,
salary int
);

create table if not exists class(
id_class int primary key auto_increment,
class_name varchar(50),
theory_room varchar(50),
practice_room varchar(50),
id_instructor int,
foreign key (id_instructor) references instructor(id_instructor)
);

create table if not exists student(
id_student int primary key auto_increment,
student_name varchar(100),
birth date,
gender enum("men","women"),
email varchar(100),
score float(10,2),
username varchar(50),
pass varchar(50),
id_class int, 
foreign key (id_class) references class(id_class) 
);