 create database pwskills;
 use pw;
 create table Curriculum
 (Course_Id char(10), 
 Course_name Varchar(30), 
 Mode_of_delivery varchar(10), 
 Students_Intake int, 
 Faculty Varchar(10));
 #dropping  
 drop table curriculum;
 drop table course;
 create table Course
 (Course_Id char(10), 
 Course_name Varchar(30), 
 Mode_of_delivery varchar(10), 
 Students_Intake int, 
 Faculty Varchar(10));
 
 #alter
 Alter table Course change column Mode_of_delivery Delivery_Mode varchar(10);
 select * from course;
 Alter table course add column Location varchar(20);
 select * from course;
 Alter table course drop column location; #dropping column from table
 select * from course;
 Alter table course rename to Pw_courses; #changing name of table
 
 
 create table Courses
 (Course_Id char(6), 
 Course_name Varchar(30), 
 Domain char(30),
 Students_Intake int, 
 Delivery_mode varchar(20), 
 Faculty Varchar(30));
 
 #USIND DML COMMANDS
 insert into Courses #inserting row
 values ("GN1001","Generative ai 101","Gnerative ai",120,"live","piyush"),("GN1002","Generative ai 102","Gnerative ai july",130,"record","aditya");
 select * from courses; 
 #if we want to five data in specific columns
 insert into courses (Course_Id,Course_name,Domain,Delivery_mode)
 values("DA1001","Data analytics","Data science","Online");
 select * from courses;
 #UPDATING
 
SELECT * FROM COURSES;
UPDATE courses
SET Delivery_mode = 'hybrid'
WHERE Course_Id = 'GN1001';
SELECT * from COURSES;

#CONSTRAINTS
drop table courses;
create table Courses
 (Course_Id char(6) unique, #unique means that the value in this column can be repeated
 Course_name Varchar(30) not null, 
 Students_Intake int, 
 Delivery_mode varchar(20), 
 Faculty Varchar(30));
insert into courses 
values ("GN1001","Data science","1000","Hybrid","ADitya");
select * from courses;
insert into courses (course_id)
values ("GN1003");
#it will show an error as i left the course_name as null which is not valid 
insert into courses (course_id,course_name)
values ("GN1003","artificial intelligence");
select * from courses;
drop table courses;
create table Courses
 (Course_Id char(6) unique, #unique means that the value in this column can be repeated
 Course_name Varchar(30) not null, 
 Students_Intake int check(Students_intake>90), 
 Delivery_mode varchar(20), 
 Faculty Varchar(30));
 insert into courses 
values ("GN1001","Data science","10","Hybrid","ADitya");
#it will give an error as number of students is less than 90
insert into courses 
values ("GN1001","Data science","100","Hybrid","ADitya");
select * from courses;
drop table courses;
create table Courses
 (Course_Id char(6) unique, #unique means that the value in this column can be repeated
 Course_name Varchar(30) not null, 
 Students_Intake int check(Students_intake>90), 
 Delivery_mode varchar(20) default("online"), 
 Faculty Varchar(30));
 insert into courses (course_id , course_name)
values ("GN1010","dsa");
select * from courses;
#here using default now delivery mode comes out to be online if not provided  
#primary key is a combination of unique and not null

  
 
 
