create database customers;
create table data
(id varchar(10),
name varchar(30));
select * from data;
select id, name from customers;
select * from customers where name='Nguyen A';
select * from data where name like '%N%';
select * from data where id in ('01', '02');























