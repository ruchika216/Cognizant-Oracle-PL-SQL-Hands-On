SET SERVEROUTPUT ON;
declare
v_dept department.department_name%type; 
v_id department.department_id%type; 
v_lid department.Location_id%type; 
cursor c_dept is SELECT department_name,department_id,Location_id FROM department;
BEGIN
  dbms_output.put_line('Department Details are :');
    OPEN c_dept;
    LOOP
        FETCH c_dept INTO v_dept,v_id,v_lid;
        EXIT WHEN c_dept%notfound;
        dbms_output.put_line(v_id ||','|| v_dept ||','|| v_lid);
    END LOOP;
    CLOSE c_dept;
END;