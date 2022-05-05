CREATE TABLE areas(Radius number(5), area number(14,2));
set serveroutput on;
Declare
pi constant number(4,2) := 3.14;
radius number(5);
area number(14,2);

Begin
radius := 3;
While radius <=7
Loop
area := pi* power(radius,2);
Insert into areas values (radius, area);
radius:= radius+1;
end loop;
end;
/
select * from areas;