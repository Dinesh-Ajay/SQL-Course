show databases;
use data;
select concat('codegnan','@@ITsolutions');
select length('codegnan');
select upper('codegnan');
select lower('CODEGNAN');
select replace('I Like Replaceme', 'Replaceme','Python');
select substring('Codegnan IT Solutions',4,10);

select reverse('Python');
select left('database',4);
select right('database',4);
select instr('database','base');
-- retrive rhe position of a string

select current_Date();
select current_Time();
select now();

select date('2026-07-22');
select year('2026-07-22');
select month('2026-07-22');
select day('2026-07-22');

create database company;
show databases;
use company;
show tables;

create table studies(pName varchar(10) primary key, sPlace varchar(20), Course varchar(20), cCost int);
desc studies;

create table software(pName varchar(10), Title varchar(20), Devin varchar(20), Scost int, Dcost int, Sold int, foreign key(pName) references studies(pName));
desc software;

create table programmer(pName varchar(10) , DOB date, DOJ date,Gender char, Prof1 varchar(20), Prof2 varchar(20), foreign key(pName) references studies(pName));
desc programmer;

insert into studies values('Ajay', "Kurnool", 'Python AI',120000);
insert into studies values('Naresh', "Kurnool", 'Python FullStack',100000);
insert into studies values('Akhil', "Guntur", 'Python',90000);

insert into software values('Ajay', "AI Engineer", "Oracle",80000,90000,1000000);
insert into software values('Akhil', "Python", "Oracle",10000,50000,90000);
insert into software values('Naresh', "Full Stack", "Oracle",60000,100000,1000000);

insert into programmer values('Ajay', "2003-11-06", "2026-07-25","M","AI","Python");
insert into programmer values('Naresh', "2003-12-16", "2026-08-26","M","Python","Full Stack");
insert into programmer values('Akhil', "2002-10-19", "2026-09-05","M","Python","Frontend");

select * from studies;
select * from software;
select * from programmer;
-- 1.
select avg(Scost) from software where Devin = 'Oracle';
select avg(Scost) as Average_Software_cost from software where Devin = 'Oracle';

-- 2. 
UPDATE programmer set Devin = 'Oracle' WHERE Devin = 'Hyderabad';

select pName, timestampdiff(year, DOB, curdate()) as Age, timestampdiff(year, DOJ, curdate()) as Experience FROM programmer;

-- 3.

-- 7.
select count(pName) as Count_programmers from studies where Course = 'DCA';
select count(pName) as Count_programmers from studies where Course = 'Python';

-- 8.






