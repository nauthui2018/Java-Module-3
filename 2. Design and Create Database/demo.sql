create table products
(id int,
productCode varchar(10) not null primary key,
productName varchar(30) not null,
productPrice double not null,
productAmount int,
productDescription text,
productStatus varchar(20) not null,
unique key code(productCode),
index product_price(productName, productPrice)
);

insert into products
(id,
productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus
)
values
(1, 'a1', 'ip6', 500, 10, 'Color: white', 'available'),
(2, 'a2', 'ip7', 600, 20, 'Color: gold', 'available'),
(3, 'a3', 'ip8', 700, 100, 'Color: black', 'available'),
(4, 'a4', 'ip11', 1000, 40, 'Color: gold', 'available'),
(5, 'a5', 'ip12', 1200, 5, 'Color: gold', 'available');

select * from products
where productCode = 'a3';

create view products_view as
select * from products;

delimiter //

create procedure GetAllProducts()
begin
	select * 
 	from products;
end //

delimiter ;

delimiter //

create procedure InsertNewProduct(
in p_id int,
p_Code varchar(10),
p_Name varchar(30),
p_Price double,
p_Amount int,
p_Description text,
p_Status varchar(20)
)
begin
	insert into products
		(id,
		productCode,
		productName,
		productPrice,
		productAmount,
		productDescription,
		productStatus
		)
	values
		(p_id,
		p_Code,
		p_Name,
		p_Price,
		p_Amount,
		p_Description,
		p_Status
		);
    
end //

delimiter ;

call InsertNewProduct(10, 'a10', 'ip4', 2000, 2, 'Color: black', 'available');

select * from products_view;

delimiter //

create procedure EditProductByID(
in p_id int,
p_Code varchar(10),
p_Name varchar(30),
p_Price double,
p_Amount int,
p_Description text,
p_Status varchar(20)
)
begin
	update products
    set
		productCode = p_Code,
		productName = p_Name,
		productPrice = p_Price,
		productAmount = p_Amount,
		productDescription =p_Description,
		productStatus = p_Status
	where id = p_id;
end //

delimiter ;

call EditProductByID(10, 'a6', 'ip4s', 2100, 1, 'Color: black', 'available');

delimiter //

create procedure DeleteProductByID(
	in p_id int
)
begin
	delete from products
    where id = p_id;
end //

delimiter ;

call DeleteProductByID(1);

select * from products_view;