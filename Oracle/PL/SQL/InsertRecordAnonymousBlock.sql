DECLARE
l_department_id  department.department_id%TYPE;
BEGIN

INSERT INTO Department 
(DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID) 
select max(DEPARTMENT_ID)+10,'TESTING','CHN-102'
from Department;

END;
/