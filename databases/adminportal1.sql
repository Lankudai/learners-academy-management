

Create database adminportal;
Use adminportal;
Create table students(id int(10), fname varchar(20), lname varchar(20), age int(10), class int(20));
Insert into students values( ‘1’,’Rohit ‘,’Kumar’,’16’,’5’);
Insert into students values( ‘2’,’Gulu ‘,Singh’,’15’,’4’);
Insert into students values( ‘3’,’Prakash‘,’Bishwas’,’18’,’8’);
Insert into students values( ‘4,’amit‘,’paul’,’13’,’3’);
Insert into students values( ‘5,’Preety ‘,’khan’,’14’,’4’);
Insert into students values( ‘6,’Ning ‘,’Gonmei’,’27’,’15’);

Select * from students;

Create table classes(id int(20), section int(10), teacher int (10),subject int(20),time int(20));
Insert into classes values( ‘1’, ‘1’, ‘1’, ‘1’,09:00’);
Insert into classes values( ‘2’, ‘3’, ‘2’, ‘2’,’10:00’);
Insert into classes values( ‘1’, ‘2’, ‘3’, ‘12’,’11:00’);
Select * from classes;

Create table teachers(id int(10), fname varchar(20), lname varchar(20), age int(10));
Insert into teachers values(‘1’,’Tripathi’,’islam’,’35’);
Insert into teachers values(‘2’,’Karthik’,’Bishwas’,’40’);
Insert into teachers values(‘3’,’Geetai’,’Kundu’,’27’);
Insert into teachers values(‘4’,’Fiona’,’Lawrence’,’28’);
Insert into teachers values(‘5’,’Aksahy’,’Singh’,’38’);
Select * from teachers;

Create table subjects( id int (10), subject varchar(20), shortcut varchar(20));
Insert into subjects values( ‘1’,’mathematics’,’math’);
Insert into subjects values( ‘2’,’physics’,’phy’);
Insert into subjects values( ‘3’,’chemistry’,’che’);
Insert into subjects values( ‘4’,’biology’,’bio’);
Insert into subjects values( ‘5’,’environment’,’evs’);
Select * from subjects


Create table classstudent(id int(10), fname varchar(20), lname varchar(20), age int(10), class int(20));
Insert into classstudent values( ‘1’,’Rohit ‘,’Kumar’,’16’,’5’);
Insert into classstudent values( ‘2’,’Gulu ‘,Singh’,’15’,’4’);
Insert into classstudent values( ‘3’,’Prakash‘,’Bishwas’,’18’,’8’);
Insert into classstudent values( ‘4,’amit‘,’paul’,’13’,’3’);
Insert into classstudent values( ‘5,’Preety ‘,’khan’,’14’,’4’);
Insert into classstudent values( ‘6,’Ning ‘,’Gonmei’,’27’,’15’);

Select * from classstudent;










