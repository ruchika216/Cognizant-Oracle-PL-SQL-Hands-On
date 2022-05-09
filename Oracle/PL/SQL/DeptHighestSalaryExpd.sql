set serveroutput on;
DECLARE
    cursor c_depts is select DEPT, sum(SALARY) as sumsal from employee group by DEPT;
    v_depts c_depts%rowtype;
BEGIN
    open c_depts;
    dbms_output.put_line('Department-wise salary expenditure:');
    loop
       fetch c_depts into v_depts;
       exit when c_depts%notfound;
       dbms_output.put_line(v_depts.DEPT || ' Department, total salary is ' || v_depts.sumsal );
    end loop;
    close c_depts;
end;
 /