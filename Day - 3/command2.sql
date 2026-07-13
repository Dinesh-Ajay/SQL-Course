-- database operations
show databases;
create database Student;
use Student;

-- table creation
create table student(stuid int, stuname varchar(10), studept varchar(10));

-- table description
desc student;

-- Value insertion
insert into student values(1001, 'Rohan', 'CSE');
insert into student values(1002, 'Vijay', 'ECE'),(1003, 'Ajay', 'EEE');

-- display table 
select * from student;

-- display table with conditions
select stuid from Student where stuid >1002;
select stuid from Student where stuid >= 1002;

-- delete data from table
delete from Student where stuid >1002;

select * from student;
insert into student values(1002, 'Vij', 'ECE'),(1003, 'Ajay', 'EEE');

-- delete data with conditions
delete from student where stuid = 1002;

select * from student;

-- Update data with conditions
update student set stuname='Naresh' where stuid=1001;
select * from student;

-- truncate the table were only the data is deleted and structre is present
truncate table student;

desc student;

-- drop the table no data or structure is present
drop table student;

desc student; #can't be done error

create table student(stuid int, stuname varchar(10), studept varchar(10));
insert into student values(1001, 'Naresh', 'CSE');
insert into student values(1002, 'Vijay', 'ECE'),(1003, 'Ajay', 'EEE');

-- alter function
-- add a column in the table with NULL values
alter table student add (stumark int);

select * from student;
update student set stumark = 990 where stuid = 1003;
update student set stumark = 800 where stuid <= 1002;
select * from student;

-- deleting the single column with data and structure
alter table student drop column studept;

select * from student;
desc student;

-- modifying the column data type
alter table student modify column stumark bigint;

-- either column must be empty or the data which exists i the column must be convertible data

select * from student;
desc student;

alter table student modify column stumark varchar(10);
select * from student;
desc student;

