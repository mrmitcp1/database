drop database QuanLySinhVien;
create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
ClassID int not null 
primary key
auto_increment,
ClassName varchar(50) not null,
StartDate datetime not null,
Status bit 
);
Create table Student(
StudentID int not null
primary key
auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int null ,
foreign key(ClassID) references Class (ClassID)

);
create table Subject(
SubID int not null
primary key
auto_increment,
SubName varchar(30) not null,
Credit tinyint not null
default 1
check (Credit>=1),
Status bit default 1
);
create table Mark (
MarkID int not null
primary key
auto_increment,
SubID int not null,
StudentID int not null,
unique key( SubID,StudentID),
Mark float default 0
check (Mark between 0 and 100),
ExamTimes tinyint default 1

);
