show databases;

create databases demo;

use demo;

create table student_table (id int(12) primary key, name varchar(100) not null, city varchar (50));

show tables;

desc student_table;

insert table student_table (id,name,city)
values(12,'pooja', 'Parbhani');

insert into student_table 
values (110, 'vaishnavi', 'Aurangabad');

select * from student_table;

select * from student_table where id>=2 and name='Parbhani';

select * from student_table where id>=2 or name='Parbhani';


select id from name where name= 'pooja';


select id from name where id>=2 || name='pooja';