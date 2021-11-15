drop database demo;

drop table student_table;

alter table student_table rename to student;

alter table student_table modify address varchar(40);

select id as 'roll_no' from student_table;

select * from student_table where id in(2,4,6);

select * from student_table where id>=3 in (select id from student_table where dept='civil' || dept='mech');


truncate table student_table;

alter table student_table add country varchar(50);


create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);

create table order_sales(
id int primary key,
productname varchar(15),
address varchar(15),
salesid int,
constraint FK_ORDER foreign key (salesid) references sales(salesid) );

insert into order_sales (id,productName,address,salesid)
values(1, 'pen', 'parbhani' ,2);

insert into sales (salesId,salesName,address)
values(4, 'nikita', 'mumbai');

insert into order_sales (id,productName,address,salesid)
values(6, 'notbook', 'parbhani' ,3);

insert into sales (salesId,salesName,address)
values(3, 'vaishnavi', 'Aurangabad');



select * from sales;

select * from order_sales;

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s inner join order_sales p on s.salesid=p.salesid;



