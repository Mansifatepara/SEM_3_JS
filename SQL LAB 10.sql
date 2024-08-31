
----------LAB-10----------

--implement SQL view

------PART-A-------

--Views (First create a view then display all views)

create table student_info
(
	rno int,
	name varchar(50),
	branch varchar(25),
	spi decimal(8,2),
	bklog int
)

insert into student_info(rno,name,branch,spi,bklog)
values
(101,'raju','CE',8.80,0),
(102,'amit','CE',2.20,3),
(103,'sanjay','ME',1.50,6),
(104,'neha','EC',7.65,1),
(105,'meera','EE',5.52,2),
(106,'mahesh','EC',4.50,3)

select * from student_info

--1.Create a view Personal with all columns.
create view personal as select * from student_info

--2.Create a view Student_Details having columns Name, Branch & SPI. 
create view student_details as select name,branch,spi from student_info

drop view student_details

--3.Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData as select rno,name,branch from student_info

--4.Create a view Student_ bklog having all columns but students whose bklog more than 2.
--letters.
--bklogs more than 5.
create view Stu_Bklog as select rno,name,bklog from student_info where name like 'm%' and bklog>5

--4. Drop Computerview form the database.
drop view vw_Computerview