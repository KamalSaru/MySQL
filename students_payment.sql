# create table for students payment records.

create table students_payment (
Payment_ID int not null primary key,
Payment_Date date not null,
Total_Amount double not null,
Amount_Paid double not null,
Balance double not null,
ID int, 
foreign key(ID) references students(ID) #from ID is parent table
);

select*from students_payment;
select*from students;
describe students_payment;

insert into students( Id, name,gender, dob, age, address, phone_number, email) value
(1,'Kamal Saru', 'M', '1989-07-23', 33, 'Pokhara Nepal', '4431234568', 'kamal@gmail.com');
insert into students_payment( Payment_ID, payment_date, Total_amount, Amount_Paid, balance, ID) value
(103,'2023-05-09', 13500, 13500, 0, 3);

# Join two table
Select Id, name, gender, dob, age, address, phone_number, email from students join students_payment on students.id=students_payment.ID;


ALTER TABLE students_payment AUTO_INCREMENT = 101;
alter table students_payment modify column ID int not null;
alter table students_payment modify column Payment_ID int not null;
alter table students_payment drop column ID;
drop table students_payment;