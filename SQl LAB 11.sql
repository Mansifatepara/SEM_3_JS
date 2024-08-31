

--------LAB-11---------

--Implement SQL Joins

create table stu_info
(
	rno int,
	name varchar(50),
	branch varchar(50)
)

insert into stu_info(rno,name,branch)
values
(101,'raju','CE'),
(102,'amit','CE'),
(103,'sanjay','ME'),
(104,'neha','EC'),
(105,'meera','EE'),
(106,'mahesh','ME')

select * from stu_info

create table result
(
	rno int,
	spi decimal(8,2)
)

insert into result(rno,spi)
values
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

select * from result

create table employee2_Master
(
	emp_no varchar(50),
	name varchar(50),
	managerNo varchar(50)
)

drop table employee2_Master

insert into employee2_Master(emp_no,name,managerNo)
values
('E01','tarun',null),
('E02','rohan','E02'),
('E03','priya','E01'),
('E04','milan','E03'),
('E05','jay','E01'),
('E06','anjana','E04')

select * from employee2_Master



-------PART-A--------



--1.Combine information from student and result table using cross join or Cartesian product.