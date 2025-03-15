--insert into register

insert into register(register_id, register_passward, register_address, register_company) values(101,'p101','fulbari','fulbari_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(102,'p102','fultola','fultola_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(103,'p103','NEW-Market','New_Market_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(104,'p104','maniktola','maniktola_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(105,'p105','telighati','telighati_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(106,'p106','pocket_gate','pocket_gate_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(107,'p107','doulatpur','doulatpur_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(108,'p108','shikari_more','shikari_more_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(109,'p109','khander','khander_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(110,'p110','tutpara','tutpara_laundry');

insert into register(register_id, register_passward, register_address, register_company) values(111,'p111','moylapota','moylapota_laundry');

--selecting from register

set pagesize 100
set linesize 200
select * from register;

--inserting employee


insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values(301,'nakib',22,10000,101);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (302,'tahim',23,11000,102);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (303,'sagor',24,12000,103);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (304,'robiul',25,13000,104);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (305,'tomal',21,9000,105);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (306,'shuvro',23,11200,106);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (307,'mahmud',25,14000,107);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (308,'sazzad',23,15000,108);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (309,'abtahi',22,17000,109);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (310,'joy',20,12000,110);

--selecting values from employee

select * from employee;

--inserting customer

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (201,'Nakib','Ahsan',01313133707);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (202,'Mainul','Islam',0131375680);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (203,'Robin','Hood',0167178780);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (204,'Towfiq','bhuiya',0171864880);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (205,'Sagar','dutta',0171987640);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (206,'Al','mahmud',0145678900);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (207,'asfaq','Mahmud',0151898980);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (208,'Hridoy','hasan',0152348980);


insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (209,'Robiul','islam',015321980);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (210,'Hasib','Hasan',0151456980);

--inserting orders

insert into ordering (order_type, order_date, emp_id, customer_id) values ('dry-wash','20-04-2022',301,201);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('foam-wash','21-04-2022',302,202);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('dry-wash','22-04-2022',303,203);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('foam-wash','24-04-2022',304,204);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('foam-wash','23-04-2022',305,205);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('dry-wash','27-04-2022',306,206);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('dry-wash','25-04-2022',307,207);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('foam-wash','26-04-2022',308,208);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('foam-wash','27-04-2022',309,209);

insert into ordering (order_type, order_date, emp_id, customer_id) values ('dry-wash','29-04-2022',310,210);

--order table with values

select * from ordering;

--inserting payment

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (301,201,'23-04-2022',300,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (302,202,'24-04-2022',350,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (303,203,'25-04-2022',100,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (304,204,'26-04-2022',40,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (305,205,'24-04-2022',90,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (306,206,'29-04-2022',60,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (307,207,'26-04-2022',200,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (308,208,'27-04-2022',210,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (309,209,'30-04-2022',250,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (310,210,'30-04-2022',260,'cash');

--selecting values from payment

select * from payment;

--description of each table


DESC register;

DESC employee;

DESC customer;

DESC orders;

DESC payment;

-LAB 02 & 03:


-- data according each table

--details about register table:

select * from register;

--details about employee table:

select * from employee;

--details about customer table:

select * from customer;

--details about orders table:

select * from orders;

--details about payment table:

select * from payment;

--updating the table register

update register set register_address='notun rasta',register_company='notun rasta laundry'  where id=101;
select * from register;

--delete operation(deleting a row from the table employee)

delete from employee where emp_id=304;
select * from employee;
insert into employee values(304,'robiul',25,13000,104);
select * from employee;

--calculating fields

select (emp_salary/2),emp_name from employee where emp_id=303;

--applying conditions(showing emp_id  whose age is 22 to take some actions)

select emp_id from employee where emp_age=22;

--range search

select customer_id,payment_date from payment
where payment_amount between 100 and 300;

--range operation

select customer_id,payment_amount from payment
where emp_id>=301 and emp_id<304;

--set membership

--varifyng some employees for official work for different process

select customer_id,payment_amount from payment where emp_id IN(301,303);
select customer_id,payment_amount from payment where emp_id NOT IN(301,303);

--Ordering by column values to see the data in order from 1st to last

select emp_id,emp_age,emp_name from employee order by emp_id;

--Ordering by column values to see the date in order from last to 1st

select emp_id,emp_age,emp_name from employee order by emp_id desc;
 --
select emp_id,emp_age,emp_name from employee order by emp_id ;

--Ordering by column values(with multiple columns)

select register_id,emp_id,emp_name,emp_age FROM employee
order by emp_id, register_id; 

--Ordering by column values(with multiple columns from last to 1st)

select register_id,emp_id,emp_name,emp_age FROM employee
order by emp_id, register_id desc; 

--selecting the distinct values from the table employee

select distinct(emp_age) from employee order by emp_age;

--comparison search condition

select customer_id from payment where payment_amount>100;

--pattern matching

select order_date from ordering 
where order_type like '%oam%';

select emp_name,order_date from employee,ordering
where employee.emp_id=ordering.emp_id and ordering.order_type like '%ry%';

--aggregate functions:

select  max(payment_amount) as maximum_payment_amount from payment;

select min(payment_amount) as  minimum_payment from payment;

select  sum(payment_amount) as total_payment_amount from payment;

select count(emp_id) from employee;

select count(*) from employee;

select count(distinct (emp_age)) from employee;

select  avg(payment_amount) from payment;

select  avg(nvl(emp_id,0)) from employee;



-- --GROUP BY clause

 select count(payment_amount),payment_date from payment group by payment_date;

  select count(payment_amount),payment_date from payment where payment_type='cash'group by payment_date;

-- -- --HAVING clause
--   select emp_age from employee group by emp_id HAVING emp_age>23;


--lab 05


--IN

select register_id,register_passward,register_address from register where register_company in ('doalautpur_laundry','poketgate_laundry');

--nested query

select order_type from ordering where emp_id in (select emp_id from employee where emp_age<25);

--set operations

--union all operation

select order_type,order_date from ordering where emp_id>303 and emp_id<=305
union all  --selected column is same in no. and same order of data types
select customer_first_name,customer_last_name from customer where customer_id>202 and customer_id<204;

--union operation

select emp_id from employee where emp_id<305
union
select customer_id from customer where customer_id <205;

--MINUS operation 

select emp_id,customer_id from ordering
MINUS
select emp_id,customer_id from payment;


--INTERSECT operation 
select emp_id,customer_id from ordering
INTERSECT
select emp_id,customer_id from payment;




--lab 06(Joining multiple tables)
--simple join examples


--Join(specific comments in specific tags of a post)

select o.order_type,p.payment_amount from ordering o join
payment p on o.emp_id = p.emp_id;


--Join (Conditions using multiple columns)

select o.order_type,p.payment_amount from orders o join
payment p on o.emp_id = p.emp_id and o.customer_id= p.customer_id;

--Natural Join

select register_id,emp_id from register Natural join employee;

--Cross Joins/ Cartesian Products

select register_password,emp_id from register cross join employee;

--Inner Join

select o.order_type,p.payment_amount from ordering o inner join
payment p on o.emp_id = p.emp_id;

--Outer Join

--LEFT Outer Join

select o.order_type,p.payment_amount from ordering o LEFT outer join
payment p on o.emp_id = p.emp_id;

--RIGHT Outer Join

select o.order_type,p.payment_amount from ordering o RIGHT outer join
payment p on o.emp_id = p.emp_id;

--FULL Outer Join

select o.order_type,p.payment_amount from ordering o FULL outer join
payment p on o.emp_id = p.emp_id;

--View

--Creating a view from the details of the table employee

create view employee_details as select emp_id,emp_name from employee 
where register_id>105;

select * from employee_details;

--Defining a view using another view

create view custom as select * from employee_details where emp_name='abtahi';

select * from custom;

--updating views

update employee_details set emp_name='Rabby' where emp_id='306';

select * from employee_details;

 