--creating table register

create table register(
register_id integer,
register_passward varchar(20),
register_address varchar(25),
register_company varchar(26),
primary key(register_id)
);

--creating table employee

create table employee(
emp_id integer,
emp_name varchar(23),
emp_age integer,
emp_salary integer,
register_id integer,
primary key(emp_id),
foreign key(register_id) references register(register_id) on delete cascade
);

--creating table customer

create table customer(
     customer_id INTEGER primary key,
    customer_first_name VARCHAR(20),
    customer_last_name VARCHAR(20),
    customer_phoneNumber INTEGER
   );





--creating table ordering

create table ordering(
    order_type VARCHAR(20),
    order_date varchar2(20),
    emp_id INTEGER unique,
    customer_id INTEGER unique,
    primary key(emp_id,customer_id),
    foreign key (emp_id) references employee(emp_id) on delete cascade,
    foreign key (customer_id) references customer(customer_id) on delete cascade
);

--creating table payment

create table payment(
     emp_id INTEGER unique,
    customer_id INTEGER unique,
    payment_date varchar2(20),
    payment_amount INTEGER,
    payment_type VARCHAR2(20),
    primary key(emp_id,customer_id),
    foreign key (emp_id) references employee(emp_id),
    foreign key (customer_id) references customer(customer_id)
);
--Altering the table by adding a new column

alter table register add temporary_column varchar2(30);
desc register
select * from register;

--Altering the table by droping a new column

alter table register drop column temporary_column;
desc register
select * from register;

--Renaming the column register_id from table register

alter table register rename column register_id to id;
desc register
select * from register;

alter table register rename column id to register_id;
desc register 
select * from register;

--modifyng the definition of the column of the table register

alter table register modify register_company varchar(30);
desc register;

