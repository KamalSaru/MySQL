
create table student (
ID int not null primary key,
Name varchar(50) not null,
Gender char(1) not null,
DOB date not null,
Age int not null,
Address varchar(100) not null,
Phone_Number varchar(10) not null,
Email varchar(50) not null
);

insert into students( Id, name,gender, dob, age, address, phone_number, email) value
(1,'Kamal Saru', 'M', '1989-07-23', 33, 'Pokhara Nepal', '4431234568', 'kamal@gmail.com');


select * from students where id=25;
describe students;

alter table students modify column ID int not null auto_increment;
ALTER TABLE students AUTO_INCREMENT = 101;
update students set  Name=name where name =FullName;
update students set id =1 where id=21;
delete from students where id=26;
alter table students rename name to Full_Name;