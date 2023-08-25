#create student marksheet
#Join three table Students, Students_payment and marksheet


create table marksheet(
Roll_No int not null primary key,
Students_Name varchar(50) not null,
Math float not null,
Science float not null,
English float not null,
Nepali float not null,
Opt_Math float not null,
Total_Mark float not null,
Percentage float not null,
Grade varchar(1) not null,
Marksheet_ID int,
foreign key(Marksheet_ID) references students(ID)
);

select*from marksheet;
select*from students;
select*from students_payment;
describe marksheet;
alter table marksheet add Grade varchar(1) not null after percentage;
alter table marksheet drop column  Students_Name;
delete from employee where Roll_No=8;
drop table marksheet;

Select Id, name, gender, dob, age, address, phone_number, email from students join students_payment on students.id=students_payment.ID;

# Inner, Left and Right joining in students and marksheet
Select Id, name, gender, dob, age, address, phone_number, email from students join marksheet on students.id=marksheet.Marksheet_ID;
select Roll_No, students_Name, Math, Science, English, Nepali, Opt_Math, Total_Mark, Percentage, Grade, marksheet_ID from marksheet right join students on marksheet.Marksheet_ID=students.ID;
select Roll_No, students_Name, Math, Science, English, Nepali, Opt_Math, Total_Mark, Percentage, Grade, marksheet_ID from marksheet left join students on marksheet.Marksheet_ID=students.ID;



