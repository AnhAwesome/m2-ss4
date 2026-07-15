create table employees (
    emp_id int auto_increment,
    full_name varchar(100) not null,
    birth_year int not null,
    department varchar(50) not null,
    salary decimal(15, 2) not null,
    phone varchar(20),
    primary key (emp_id)
);

insert into employees (full_name, birth_year, department, salary, phone) values
('nguyen hoang anh', 1995, 'it', 15000000.00, '0912345678'),
('le thi mai anh', 1998, 'hr', 12000000.00, null),
('pham van cuong', 1992, 'it', 25000000.00, '0987654321'),
('tran thi dieu', 1996, 'sales', 9000000.00, '0901122334'),
('hoang lan anh', 2000, 'marketing', 11000000.00, null),
('do minh tu', 1994, 'hr', 18000000.00, '0933445566'),
('vu duc anh', 1997, 'it', 4500000.00, '0944556677'),
('bui thu thao', 1993, 'accounting', 13000000.00, '0955667788'),
('dang quang huy', 1999, 'it', 19000000.00, null),
('ngo bao ngoc', 1991, 'sales', 4800000.00, '0966778899');

select * from employees 
where salary between 10000000 and 20000000;

select * from employees 
where department in ('it', 'hr');

select * from employees 
where full_name like '%anh%';

select * from employees 
where phone is null;

update employees 
set salary = salary * 1.1 
where department = 'it';

update employees 
set phone = '0900000000' 
where phone is null;

delete from employees 
where salary < 5000000;
