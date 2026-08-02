create database mysqldatabase;
show databases;
use data;
show tables;
select * from emp;
select * from emp1;
select * from emp2;

use mysqldatabase;
create table emp(empId int NOT NULL, empName varchar(10), empSal int);
desc emp;
show tables;
insert into emp values(101,"Ajay",10000000);
insert into emp values(102,"vijay",8000000);
insert into emp values(103,"Dinesh",15000000);

create table emp2(empId int NOT NULL, empName varchar(10), empSal int);
desc emp2;
show tables;
insert into emp2 values(101,"Ajay",10000000);
insert into emp2 values(102,"vijay",8000000);
insert into emp2 values(103,"Dinesh",15000000);

create table emp1(empId int unique, empName varchar(10), empDept varchar(10));
desc emp1;
show tables;
insert into emp1 values(101,"Ajay",'HR');

select * from emp
union
select * from emp1;

select max(empSal) from emp;

select min(empSal) from emp;

select count(empSal) from emp;

select sum(empSal) from emp;

select avg(empSal) from emp;

create table emp3(maxSal int , minSal int, sumSal int, countSal int, avgSal int);
desc emp3;
insert into emp3 
select 
max(empSal),
min(empSal),
sum(empSal),
count(empSal),
avg(empSal)
from emp;

select * from emp3;

select abs(-23.456);
select ceil(12.56);
select floor(12.56);
select power(12, 2);
select sqrt(121);
select greatest(12,34,5,67,89);
select least(12,34,5,67,89);
select sign(812);
select truncate(89.98,123.456);

-- 1. Select all records where ename starts with 's' and its length is 6 char 
insert into emp values(103,"Sunill",1500);
insert into emp values(104,"Sai",2000);
insert into emp values(105,"Suneth",1900);

select * from emp;
select * from  emp where empName like 'S_____';

--  2. How to retrive record where sal between 1000 to 2000
select * from  emp where empSal between 1000 and 2000;

-- 3. How to fetch only common records from two tables emp and emp2? 



