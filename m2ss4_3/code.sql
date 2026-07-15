create table students (
    student_id int auto_increment,
    full_name varchar(100) not null,
    birth_date date not null,
    gender varchar(10) not null,
    email varchar(150),
    primary key (student_id)
);

insert into students (full_name, birth_date, gender, email) values
('nguyen van anh', '2005-03-15', 'nam', 'vananh.nguyen@email.com'),
('le thi bao', '2006-08-22', 'nu', 'baole.thi@email.com'),
('pham hong cuong', '2005-11-05', 'nam', 'cuongpham@email.com'),
('hoang minh dieu', '2006-01-30', 'nu', 'dieuminh.hoang@email.com'),
('tran minh tam', '2005-07-12', 'nam', null);

select * from students;

update students 
set email = 'minhtam.tran@email.com' 
where email is null;

update students 
set gender = 'nu' 
where student_id = 'sv005';

delete from students 
where student_id = 'sv003';

select student_id, full_name, birth_date 
from students 
where birth_date between '2003-01-01' and '2005-12-31';

select student_id, full_name, birth_date 
from students 
where gender in ('nam', 'nu');

select student_id, full_name, birth_date 
from students 
where student_id in ('sv001', 'sv004', 'sv005');
