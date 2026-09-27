create database practice;
use practice;
CREATE TABLE STUDENT(
stu_id int primary key,
stu_name varchar(50),
course_id int,
marks int,
city varchar(70));

insert into student values
(1,"asha",101,85,"pune"),
(2,"rahul",102,72,"mumbai"),
(3,"neha",101,91,"pune"),
(4,"riya",103,65,"nashik"),
(5,"amit",102,78,"pune");

create table courses(
course_id int primary key,
course_name varchar(70),
fees int);

insert into courses values
(101,"python",5000),
(102,"SQL",4500),
(3,"java",6000),
(4,"Power BI",5500);

# select + where
select * from student;
select stu_name,city FROM STUDENT ;
select * from student where city = "pune";
select * from student where marks > 75;
select * from student where marks between 70 and 85;
select * from student where city in("pune","mumbai"); 
select * from student where city ="pune" or city = "mumbai";

# order by
select * from student order by marks asc;
select * from student order by marks desc;
select * from student order by stu_name asc;

#group by + aggregate
select city,count(stu_name) as "no. of students" from student group by city;
select course_id,count(course_id) as "student enrollrd" from student group by course_id;
select city,AVG(marks) as "avg marks" from student group by city;
select max(marks) as "maximum marks" from student;
select min(marks) as "minimum marks" from student;

# having
select city,count(stu_name)from student group by city having count(stu_name)>2;
select course_id,count(stu_name) from student group by course_id having count(stu_name)>1;
select city,avg(marks) as "avg marks" from student group by city having avg(marks)>80;

# join
select stu_name,course_name,fees 
from student
join courses
on student.course_id = courses.course_id;

select stu_name,course_name
from student
join courses
on student.course_id = courses.course_id where course_name = "SQL";

select stu_name,course_name
from student
join courses
on student.course_id = courses.course_id where city = "pune";

select stu_name,course_name
from student
right join courses
on student.course_id = courses.course_id;



