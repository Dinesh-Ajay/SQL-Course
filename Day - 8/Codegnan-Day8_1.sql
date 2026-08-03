-- Joins
-- Combining two more tables of common column
-- TYpes of joins
-- 1. Cross join -> Product of the rows in both the tables
-- 2. Inner join -> 
-- 3. Natural join
-- 4. Equi join
-- 5. Non-equi join
-- 6. Self join
-- 7. Left outer join
-- 8. right outer join
-- 9. Full outer join

create database exp;
show databases;
use exp;
show tables;

create table emp(empId int primary key, empName varchar(10), empSal int);

create table dept(deptId int NOT NULL, deptName varchar(10), empId int);

insert into emp values(101,"Sunill",1500);
insert into emp values(102,"Sai",2000);
insert into emp values(103,"Suneth",1900);
insert into emp values(104,"Ajay",9000);

drop table dept;

insert into dept values(1001,"HR",101);
insert into dept values(1002,"Software",102);
insert into dept values(1003,"Deveops",105);


desc emp;
select * from emp;
select * from dept;

select e.empId, e.empName, d.deptId, d.deptName from emp e cross join dept d;

select e.empId, e.empName, d.deptId, d.deptName from emp e inner join dept d on e.empId>d.empId;

select e.empId, e.empName, d.deptId, d.deptName from emp e natural join dept d;
-- Equi join
select e.empId, e.empName, d.deptId, d.deptName from emp e, dept d where e.empId=d.empId;
-- Non-Equi join
select e.empId, e.empName, d.deptId, d.deptName from emp e, dept d where e.empId<>d.empId;







