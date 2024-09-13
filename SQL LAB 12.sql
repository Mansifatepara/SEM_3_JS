--LAB 12

select * from person

select * from dept



--select person.PersonName,dept.DepartmentName,dept.DepartmentCode
--From person join dept
--on person.DepartmentID=dept.DepartmentID



----PART_A----

--1. Find all persons with their department name & code.
select person.PersonName,dept.DepartmentName,dept.DepartmentCode
From person join dept
on person.DepartmentID=dept.DepartmentID

--2.Find the person's name whose department is in C-Block.
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.Location='c-block'

--3.Retrieve person name, salary & department name who belongs to Jamnagar city.
select person.PersonName,person.Salary,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where person.city='jamnagar'

--4.Retrieve person name, salary & department name who does not belong to Rajkot city.
select person.PersonName,person.Salary,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where person.city<>'rajkot'

--5.Retrieve person�s name of the person who joined the Civil department after 1-Aug-2001
select person.PersonName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.DepartmentName='civil' and person.JoiningDate>'01-aug-2001'

--6.Find details of all persons who belong to the computer department.
select *
from person
join dept
on person.DepartmentID=dept.DepartmentID
where dept.DepartmentName='computer'

--7.Display all the person's name with the department whose joining date difference with the current date 
--is more than 365 days.
select person.PersonName,dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
where datediff(day,JoiningDate,getdate())>365

--8.Find department wise person counts.
select count(person.PersonID),dept.DepartmentName
from person
join dept
on person.DepartmentID=dept.DepartmentID
group by dept.DepartmentName

--9.Give department wise maximum & minimum salary with department name.
--single column)
--single column)