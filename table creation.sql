#create database mansi;
#use mansi;
create table my_customers(
cust_id int,
name varchar(50)not null,
email varchar(40)not null unique,
contact varchar(10) not null unique,
address text
);











