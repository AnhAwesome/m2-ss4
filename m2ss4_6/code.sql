create table products (
    product_id int auto_increment,
    product_name varchar(100) not null,
    category varchar(50) not null,
    price decimal(15, 2) not null,
    quantity int not null,
    primary key (product_id)
);

insert into products (product_name, category, price, quantity) values
('asus vivobook', 'laptop', 14500000.00, 10),
('macbook air m1', 'laptop', 18900000.00, 0),
('samsung galaxy s23', 'phone', 16000000.00, 5),
('ipad 10.2', 'tablet', 8500000.00, 8),
('samsung galaxy tab', 'tablet', 6500000.00, 0);

select * from products 
where price between 5000000 and 15000000;

select * from products 
where category in ('laptop', 'tablet');

select * from products 
where product_name like 'sam%';

select * from products 
where category not in ('phone');

update products 
set price = price * 0.95 
where category = 'laptop';

select * from products;

delete from products 
where quantity = 0;

select * from products;
