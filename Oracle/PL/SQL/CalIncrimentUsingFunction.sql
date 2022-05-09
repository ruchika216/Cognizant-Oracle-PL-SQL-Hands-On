CREATE OR REPLACE FUNCTION calculate_increment
    (incperc in number,
     salary in number
    )
     
    return number as
    
    BEGIN
        return salary * incperc/100;
    END;
    /