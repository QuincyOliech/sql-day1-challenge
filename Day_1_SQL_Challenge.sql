use school;

create table Students(
StudentID int primary key,
FirstName varchar(100) not null,
LastName varchar(100),
Age int check (Age>=18),
Email varchar(255) unique not null
);

select * from Students; 

insert into Students (StudentID,FirstName,LastName,Age,Email)
values(1,'John','Doe',20,'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com');

alter table Students add EnrollmentDate date;

alter table Students modify Email varchar(300) unique not null;

alter table Students drop column LastName;