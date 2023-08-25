# create database employee;
# drop database employee;
# use employee;

#create table login user
create table login (
UserID varchar(50) not  null,
Password varchar(50) not null
);

#employee details informations
create table employee (
Emp_ID int not null primary key,
Name varchar(50) not null,
Gender char(1) not null,
DOB date not null,
Age int not null,
Address varchar(100) not null,
Phone_Number varchar(10) not null,
Email varchar(50) not null
);

insert into employee(UserID, Password, Emp_ID, Name, Gender, DOB, Age, Address, Phone_Number, Email) values
('Kamal' , 'Kamal123', 1, 'Kamal Saru' , 'M', '07-23-1989', 33, 'Baltimore MD', '4431234568', 'kamal@gmail.com');

select * from employee