drop database if exists sales;
create database sales;
drop table if exists sales.customers;
create table customers
(customerNumber int(10) not null primary key,
foreign key (employeeNumber) references employees(employeeNumber),
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit double
);

drop table if exists orders;
create table orders
(orderNumber int not null primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date,
status varchar(15) not null,
comments text,
quantityOrder int not null,
priceEach double not null,
foreign key (customerNumber) references customers(customerNumber)
);

drop table if exists payments;
create table payments
(foreign key (customerNumber) references customers(customerNumber),
checkNumber varchar(50) not null,
paymentDate date not null,
amount double not null
);

drop table if exists orderdetails;
create table orderdetails
(foreign key (productNumber) references products(productNumber),
foreign key (orderNumber) references orders(orderNumber)
);

drop table if exists products;
create table products
(productCode varchar(15) not null primary key,
foreign key (productLine) references productlines(productLine),
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice double not null,
MSRP double not null
);

drop table if exists productlines;
create table productlines
(productLine varchar(50) not null primary key,
textDescription text,
image text
);

drop table if exists employees;
create table employees
(employeeNumber int not null primary key,
foreign key (officeCode) references offices(officeCode),
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null
);

drop table if exists offices;
create table offices
(officeCode varchar(10) not null primary key,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
state varchar(50),
country varchar(50) not null,
postalCode varchar(15) not null
);
