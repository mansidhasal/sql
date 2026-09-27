CREATE DATABASE skillected;
use skillected;
drop table student;

CREATE TABLE STUDENT(
stu_id int primary key,
stu_name varchar(60) not null,
course_id int,
foreign key (course_id) references courses (course_id),
marks int check (marks>=0));

drop table courses;

CREATE TABLE COURSES(
course_id int primary key,
course_name varchar(50),
fees int check (fees > 0));

insert into courses values
(101,"python",6000),
(102,"SQL",5800),
(103,"java",4500),
(104,"excel",7000),
(105,"power bi",6500);

insert into student values
(1,"mansi",101,89),
(2,"pradnya",104,98),
(3,"anuja",105,67),
(4,"madhura",101,96),
(5,"srushti",104,84),
(6,"sejal",103,76),
(7,"anupriya",102,85);

select * from student;
select * from courses;