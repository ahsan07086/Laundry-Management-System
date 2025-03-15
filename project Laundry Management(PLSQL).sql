--Basic PL/SQL code
SET SERVEROUTPUT ON
declare
 a int;
 b int;
 c int;
begin
 a:=&a;
 b:=&b;
 c:=a+b;
 dbms_output.put_line('Sum of a and b='||c);
end;
/

--PL/SQL code for variable declaration and print value
SET SERVEROUTPUT ON
declare
emp_name employee.emp_name%type;
emp_id number;
begin
select emp_name,emp_id into emp_name,emp_id from employee where emp_name='nakib';
dbms_output.put_line('employee name='||emp_name||  ' employee id='||emp_id);
end;
/

SET  SERVEROUTPUT ON
declare
ID register.register_id%type;
begin
select register_id into ID from register where register_address='moylapota';
dbms_output.put_line('ID is ='||ID);
end;
/

--PL/SQL code for inserting a default value into the table

SET  SERVEROUTPUT ON
declare
register_id number:=112;
register_passward register.register_passward%type:='p112';
register_address register.register_address%type:='ZeroPoint';
register_company register.register_company%type:='ZeroPoint Laundry';
begin
insert into register values(register_id,register_passward,register_address,register_company);
end;
/
--Use of rowtype in PL/SQL

SET SERVEROUTPUT ON
declare
emp employee%rowtype;
begin
emp.emp_id:=315;
emp.emp_age:=21;
emp.emp_name:='Tasin';
emp.emp_salary:=12000;
insert into employee values emp;
end;
/



--if/else statement in PL/SQL
 set SERVEROUTPUT ON
 variable c_id number;
declare
amount payment.payment_amount%type;

discount_price payment.payment_amount%type;

begin
:c_id :=&c_id;
select payment_amount into amount from payment where emp_id like :c_id;

IF amount <50 
then
  discount_price := amount;
elsif  
amount >=50 and amount <100 then
  discount_price := amount-(amount*.25);

elsif 
amount >=100 and amount <150 then
  discount_price := amount-(amount*.40);

ELSE
  discount_price := amount-(amount*.50);
end if;
dbms_output.put_line('Payment  :'||round(discount_price,2));
exception
  when others then
  
    dbms_output.put_line(sqlerrm);

end;
/

--curser in pl/sql

--using %notfound attribute

SET SERVEROUTPUT ON
declare
 v_name varchar2(30);  --v_name will hold the data that is returned by the cursor
 cursor cur_nakib is select emp_name from employee where emp_id<305;
begin
 open cur_nakib;
 loop
  fetch cur_nakib into v_name;
  exit when cur_nakib%notfound;
  dbms_output.put_line(v_name);
 end loop;
 close cur_nakib;

end; 
/


--Rowcount in PL/SQL

set serveroutput on
declare 
cursor nakib_cursor is select * from employee where emp_id<305;
v_name employee%rowtype;
begin
open nakib_cursor;
fetch nakib_cursor into v_name.emp_id,v_name.emp_name,v_name.emp_age,v_name.emp_salary,v_name.register_id;
while nakib_cursor%found loop
dbms_output.put_line('Employee id=' ||v_name.emp_id|| ' Employee name=' ||v_name.emp_name|| ' Employee age=' ||v_name.emp_age|| ' Employee_salary=' ||v_name.emp_salary|| ' v_name.register_id='||v_name.register_id);
dbms_output.put_line('Rowcount='||nakib_cursor%rowcount);
fetch nakib_cursor into v_name;
end loop;
close nakib_cursor;
end;
/

--using %found attribute in PL/SQL

declare
cursor e_cursor is select * from employee where emp_id<305;
e_id employee.emp_id%type;
e_name employee.emp_name%type;
e_age employee.emp_age%type;
e_salary employee.emp_salary%type;
e_register_id employee.register_id%type;
begin
open e_cursor;
fetch e_cursor into e_id,e_name,e_age,e_salary,e_register_id;
while e_cursor%found 
loop
dbms_output.put_line(e_id|| ' '||e_name|| ' ' ||e_age|| ' ' ||e_salary|| ' ' ||e_register_id);
fetch e_cursor into e_id,e_name,e_age,e_salary,e_register_id;
end loop;
close e_cursor;
end;
/

--Using %isopen attribute in PL/SQL'
declare 
cursor c1 is select * from employee;
e employee%rowtype;
begin
 open c1;
 if c1%isopen
 then
 dbms_output.put_line('Curser is already open');
 else
 dbms_output.put_line('Curser is not open');
 end if;
 close c1;
 end;
 /


 create or replace procedure displaySalary as
 temp_salary employee.emp_salary%type;
 begin
  select emp_salary into temp_salary from employee where emp_name='nakib';
  if temp_salary>10000
  then
  dbms_output.put_line('Salary>1000');
  elsif temp_salary=10000
  then
  dbms_output.put_line('Salary=10000');
  else
  dbms_output.put_line('Salary<1000');

  end if;
 exception 
 when NO_DATA_FOUND then
  dbms_output.put_line('no data');
 end displaySalary;
 / 

 create or replace procedure displaySalary as
 temp_salary employee.emp_salary%type;
 begin
  select emp_salary into temp_salary from employee where emp_name='nakib';
  if temp_salary>10000
  then
  dbms_output.put_line('Salary>1000');
  elsif temp_salary=10000
  then
  dbms_output.put_line('Salary=10000');
  else
  dbms_output.put_line('Salary<1000');

  end if;
 exception 
 when NO_DATA_FOUND then
  dbms_output.put_line('no data');
 end displaySalary;
 / 

SET SERVEROUTPUT ON
begin
displaySalary;
end;
/

create or replace procedure Display(var1 in number,var2 out number)
 as
 begin
 select emp_age into var2 from employee where emp_salary=var1;
 if var2>20 then
 dbms_output.put_line('age>20');
 else
 dbms_output.put_line('age<20');
 end if;
 exception
 when NO_DATA_FOUND then
 dbms_output.put_line('no data');
 end Display;
 /
 declare
 var1 number:=10000;
 var2 number;
 begin
 Display(var1,var2);
 end;
 /